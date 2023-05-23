
LOAD CSV FROM "https://raw.githubusercontent.com/zunairrashid123/Big-Data-/main/chat_leave_team_chat.csv"  AS row
MERGE (u:User {id: row[0]})
MERGE (c:TeamChatSession {id: row[1]})
MERGE (u)-[:Leaves{timeStamp: row[2]}]->(c)