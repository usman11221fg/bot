const fs = require('fs-extra')
if (fs.existsSync('.env')) require('dotenv').config({ path: __dirname+'/.env' })


//═══════[Required Variables]════════\\
global.audio= "" ;  
global.video= "" ;
global.port =process.env.PORT
global.appUrl=process.env.APP_URL || ""                       // put your app url here,
global.email ="samsamsun789@gmail.com"
global.location="Lahore,Pakistan."
global.mongodb= process.env.MONGODB_URI || ""
global.allowJids= process.env.ALLOW_JID || "null" 
global.blockJids= process.env.BLOCK_JID || "120363023983262391@g.us"
global.DATABASE_URI = process.env.DATABASE_URL || ""

global.timezone= process.env.TZ || process.env.TIME_ZONE || "Asia/Karachi";
global.github=process.env.GITHUB|| "https://github.com/SuhailTechInfo/Suhail-Md";
global.gurl  =process.env.GURL  || "https://whatsapp.com/channel/0029Va9thusJP20yWxQ6N643";
global.website=process.env.GURL || "https://whatsapp.com/channel/0029Va9thusJP20yWxQ6N643" ; 
global.THUMB_IMAGE = process.env.THUMB_IMAGE || process.env.IMAGE || "https://telegra.ph/file/d5b1c3544fedc23e11a06.jpg" ; // SET LOGO FOR IMAGE 



global.devs = "923184474176" // Developer Contact
global.sudo = process.env.SUDO ? process.env.SUDO.replace(/[\s+]/g, '') : "null";
global.owner= process.env.OWNER_NUMBER ? process.env.OWNER_NUMBER.replace(/[\s+]/g, '') : "923184474176";




//========================= [ BOT SETTINGS ] =========================\\
global.style = process.env.STYLE   || '5',  // put '1' to "5" here to check bot styles
global.flush = process.env.FLUSH   || "false"; // Make it "true" if bot not responed
global.gdbye = process.env.GOODBYE || "false"; 
global.wlcm  = process.env.WELCOME || "false";  // Make it "false" for disable WELCOME 

global.warncount = process.env.WARN_COUNT || 3,
global.disablepm = process.env.DISABLE_PM || "false",
global.MsgsInLog = process.env.MSGS_IN_LOG|| "false", // "true"  to see messages , "log" to open logs , "false" to hide logs messages
global.userImages= process.env.USER_IMAGES|| "text",
global.waPresence= process.env.WAPRESENCE ||  "set according to your need" ; // 'unavailable' | 'available' | 'composing' | 'recording' | 'paused'


//========================= [ AUTO READ MSGS & CMDS ] =========================\\
global.readcmds = process.env.READ_COMMAND || "false"
global.readmessage = process.env.READ_MESSAGE || "false"
global.readmessagefrom = process.env.READ_MESSAGE_FROM || "null,923xxxxxxxx";


//========================= [ AUTO SAVE & READ STATUS ] =========================\\
global.read_status = process.env.AUTO_READ_STATUS || "false"
global.save_status = process.env.AUTO_SAVE_STATUS || "false"
global.save_status_from =  process.env.SAVE_STATUS_FROM  || "null,923xxxxxxxx";
global.read_status_from =  process.env.READ_STATUS_FROM  ||  "923184474176,923xxxxxxxx";

global.api_smd = "https://api-smd-1.vercel.app"
global.scan = "https://suhail-md-vtsf.onrender.com/";

module.exports = {

  menu: process.env.MENU || "", /**  Available @MENU @Schemes 1: Aztec_Md, 2: A17_Md, 3: Suhail-Md Default ---------- If Not Choose then it Randomely Pic One Of Them Each time **/

  HANDLERS: process.env.PREFIX  || ".",
  BRANCH  : process.env.BRANCH  || "main",
  VERSION : process.env.VERSION || "V.1.2.8",
  caption : process.env.CAPTION || "©sᴜʜᴀɪʟ²²¹-ᴍᴅ" , // ```『 ᴘᴏᴡᴇʀᴇᴅ ʙʏ sᴜʜᴀɪʟ²²¹-ᴍᴅ 』```", //*『sᴜʙsᴄʀɪʙᴇ • sᴜʜᴀɪʟ ᴛᴇᴄʜ』*\n youtube.com/@suhailtechinfo0"),
 
  author : process.env.PACK_AUTHER|| "Suhail-MD",
  packname: process.env.PACK_NAME || "♥️",
  botname : process.env.BOT_NAME  || "sᴜʜᴀɪʟ-ᴍᴅ",
  ownername:process.env.OWNER_NAME|| "It'x Suhail",

  sessionName:process.env.SESSION_ID || "SUHAIL_16_25_03_24_ewogICJjcmVkcy5qc29uIjogIntcbiAgXCJub2lzZUtleVwiOiB7XG4gICAgXCJwcml2YXRlXCI6IHtcbiAgICAgIFwidHlwZVwiOiBcIkJ1ZmZlclwiLFxuICAgICAgXCJkYXRhXCI6IFtcbiAgICAgICAgMTA0LFxuICAgICAgICAyNDgsXG4gICAgICAgIDE3MixcbiAgICAgICAgODMsXG4gICAgICAgIDEwMSxcbiAgICAgICAgMjE3LFxuICAgICAgICAyMTIsXG4gICAgICAgIDEwOCxcbiAgICAgICAgOTAsXG4gICAgICAgIDIxNixcbiAgICAgICAgMjI3LFxuICAgICAgICAyNDAsXG4gICAgICAgIDMyLFxuICAgICAgICAzLFxuICAgICAgICA0OCxcbiAgICAgICAgMjA0LFxuICAgICAgICAxMjUsXG4gICAgICAgIDE0NyxcbiAgICAgICAgMTgxLFxuICAgICAgICAyMjIsXG4gICAgICAgIDEsXG4gICAgICAgIDIxMSxcbiAgICAgICAgMjA4LFxuICAgICAgICA2NSxcbiAgICAgICAgMjMzLFxuICAgICAgICA1MCxcbiAgICAgICAgMTg5LFxuICAgICAgICAyMDMsXG4gICAgICAgIDE5NSxcbiAgICAgICAgMTYyLFxuICAgICAgICAxOCxcbiAgICAgICAgMTI0XG4gICAgICBdXG4gICAgfSxcbiAgICBcInB1YmxpY1wiOiB7XG4gICAgICBcInR5cGVcIjogXCJCdWZmZXJcIixcbiAgICAgIFwiZGF0YVwiOiBbXG4gICAgICAgIDgyLFxuICAgICAgICA5MyxcbiAgICAgICAgMTEwLFxuICAgICAgICAyNDUsXG4gICAgICAgIDQzLFxuICAgICAgICAxOTAsXG4gICAgICAgIDQ2LFxuICAgICAgICAyMzMsXG4gICAgICAgIDE5MSxcbiAgICAgICAgMTkwLFxuICAgICAgICAxODQsXG4gICAgICAgIDE3MSxcbiAgICAgICAgMTMsXG4gICAgICAgIDIxMCxcbiAgICAgICAgMTA4LFxuICAgICAgICAyMzksXG4gICAgICAgIDg0LFxuICAgICAgICAxMyxcbiAgICAgICAgNjMsXG4gICAgICAgIDIyMyxcbiAgICAgICAgOTQsXG4gICAgICAgIDI0OSxcbiAgICAgICAgMTE0LFxuICAgICAgICAxMCxcbiAgICAgICAgOTYsXG4gICAgICAgIDI1NCxcbiAgICAgICAgOTMsXG4gICAgICAgIDIwNixcbiAgICAgICAgMTExLFxuICAgICAgICAyMyxcbiAgICAgICAgMTk4LFxuICAgICAgICAwXG4gICAgICBdXG4gICAgfVxuICB9LFxuICBcInBhaXJpbmdFcGhlbWVyYWxLZXlQYWlyXCI6IHtcbiAgICBcInByaXZhdGVcIjoge1xuICAgICAgXCJ0eXBlXCI6IFwiQnVmZmVyXCIsXG4gICAgICBcImRhdGFcIjogW1xuICAgICAgICAxMjgsXG4gICAgICAgIDIwMixcbiAgICAgICAgNDIsXG4gICAgICAgIDE1MCxcbiAgICAgICAgMzksXG4gICAgICAgIDE5MixcbiAgICAgICAgMTQ3LFxuICAgICAgICA4MCxcbiAgICAgICAgMzIsXG4gICAgICAgIDIwLFxuICAgICAgICAxNjgsXG4gICAgICAgIDI4LFxuICAgICAgICAxMTksXG4gICAgICAgIDk4LFxuICAgICAgICA1OCxcbiAgICAgICAgMjA4LFxuICAgICAgICA1LFxuICAgICAgICA0NCxcbiAgICAgICAgNDMsXG4gICAgICAgIDI0LFxuICAgICAgICAyMjQsXG4gICAgICAgIDkyLFxuICAgICAgICAyMjAsXG4gICAgICAgIDI1MSxcbiAgICAgICAgMTMsXG4gICAgICAgIDU5LFxuICAgICAgICA1MSxcbiAgICAgICAgMTEsXG4gICAgICAgIDE2MyxcbiAgICAgICAgMjEsXG4gICAgICAgIDYwLFxuICAgICAgICA5M1xuICAgICAgXVxuICAgIH0sXG4gICAgXCJwdWJsaWNcIjoge1xuICAgICAgXCJ0eXBlXCI6IFwiQnVmZmVyXCIsXG4gICAgICBcImRhdGFcIjogW1xuICAgICAgICA0MCxcbiAgICAgICAgMTI2LFxuICAgICAgICAxMDksXG4gICAgICAgIDYxLFxuICAgICAgICAyMjMsXG4gICAgICAgIDIyNyxcbiAgICAgICAgNDgsXG4gICAgICAgIDE3OSxcbiAgICAgICAgMjIyLFxuICAgICAgICAxMjgsXG4gICAgICAgIDE0MixcbiAgICAgICAgNjEsXG4gICAgICAgIDI0NixcbiAgICAgICAgMTU1LFxuICAgICAgICA1MCxcbiAgICAgICAgMjQ5LFxuICAgICAgICAxMzksXG4gICAgICAgIDEwMixcbiAgICAgICAgMCxcbiAgICAgICAgNzksXG4gICAgICAgIDQ2LFxuICAgICAgICAxNTYsXG4gICAgICAgIDE0MixcbiAgICAgICAgMCxcbiAgICAgICAgMjIwLFxuICAgICAgICAxODYsXG4gICAgICAgIDE2NixcbiAgICAgICAgMTY0LFxuICAgICAgICAxOTAsXG4gICAgICAgIDE4MCxcbiAgICAgICAgMTUxLFxuICAgICAgICAxOVxuICAgICAgXVxuICAgIH1cbiAgfSxcbiAgXCJzaWduZWRJZGVudGl0eUtleVwiOiB7XG4gICAgXCJwcml2YXRlXCI6IHtcbiAgICAgIFwidHlwZVwiOiBcIkJ1ZmZlclwiLFxuICAgICAgXCJkYXRhXCI6IFtcbiAgICAgICAgOCxcbiAgICAgICAgMTI2LFxuICAgICAgICAxMTksXG4gICAgICAgIDIzMSxcbiAgICAgICAgMTg5LFxuICAgICAgICA5OSxcbiAgICAgICAgNixcbiAgICAgICAgMTQ2LFxuICAgICAgICA4MyxcbiAgICAgICAgMTY1LFxuICAgICAgICAyNDAsXG4gICAgICAgIDE5MSxcbiAgICAgICAgMjQ0LFxuICAgICAgICAxNDEsXG4gICAgICAgIDU0LFxuICAgICAgICAyMTQsXG4gICAgICAgIDUxLFxuICAgICAgICAxNDAsXG4gICAgICAgIDIxNSxcbiAgICAgICAgMjAsXG4gICAgICAgIDE5OSxcbiAgICAgICAgMTM0LFxuICAgICAgICA5MyxcbiAgICAgICAgODUsXG4gICAgICAgIDM3LFxuICAgICAgICAyNDEsXG4gICAgICAgIDI0NSxcbiAgICAgICAgMjIxLFxuICAgICAgICAxOTYsXG4gICAgICAgIDI0MCxcbiAgICAgICAgMjQxLFxuICAgICAgICAxMTVcbiAgICAgIF1cbiAgICB9LFxuICAgIFwicHVibGljXCI6IHtcbiAgICAgIFwidHlwZVwiOiBcIkJ1ZmZlclwiLFxuICAgICAgXCJkYXRhXCI6IFtcbiAgICAgICAgMTY3LFxuICAgICAgICA3MSxcbiAgICAgICAgMTExLFxuICAgICAgICAxNDYsXG4gICAgICAgIDc1LFxuICAgICAgICAxMjYsXG4gICAgICAgIDY4LFxuICAgICAgICAxMjAsXG4gICAgICAgIDM0LFxuICAgICAgICAxMzUsXG4gICAgICAgIDI0MixcbiAgICAgICAgNyxcbiAgICAgICAgMTg0LFxuICAgICAgICA2NCxcbiAgICAgICAgOTAsXG4gICAgICAgIDE4LFxuICAgICAgICAxNjcsXG4gICAgICAgIDExOSxcbiAgICAgICAgMjIxLFxuICAgICAgICAxODgsXG4gICAgICAgIDYwLFxuICAgICAgICAyMyxcbiAgICAgICAgMjEwLFxuICAgICAgICA5LFxuICAgICAgICAyMDMsXG4gICAgICAgIDE4NCxcbiAgICAgICAgMTgxLFxuICAgICAgICAxODUsXG4gICAgICAgIDU5LFxuICAgICAgICAxNzEsXG4gICAgICAgIDg2LFxuICAgICAgICAxMTdcbiAgICAgIF1cbiAgICB9XG4gIH0sXG4gIFwic2lnbmVkUHJlS2V5XCI6IHtcbiAgICBcImtleVBhaXJcIjoge1xuICAgICAgXCJwcml2YXRlXCI6IHtcbiAgICAgICAgXCJ0eXBlXCI6IFwiQnVmZmVyXCIsXG4gICAgICAgIFwiZGF0YVwiOiBbXG4gICAgICAgICAgMTc2LFxuICAgICAgICAgIDIxNixcbiAgICAgICAgICAyNyxcbiAgICAgICAgICA5OSxcbiAgICAgICAgICAyMSxcbiAgICAgICAgICAxNzQsXG4gICAgICAgICAgMjIsXG4gICAgICAgICAgMTUxLFxuICAgICAgICAgIDIxOCxcbiAgICAgICAgICA0MixcbiAgICAgICAgICAxNTEsXG4gICAgICAgICAgMTY3LFxuICAgICAgICAgIDQ3LFxuICAgICAgICAgIDczLFxuICAgICAgICAgIDM1LFxuICAgICAgICAgIDIzNSxcbiAgICAgICAgICAyNTQsXG4gICAgICAgICAgMTEsXG4gICAgICAgICAgMjQ1LFxuICAgICAgICAgIDcxLFxuICAgICAgICAgIDcsXG4gICAgICAgICAgOTcsXG4gICAgICAgICAgMTkyLFxuICAgICAgICAgIDI1NSxcbiAgICAgICAgICAxNjQsXG4gICAgICAgICAgMjMzLFxuICAgICAgICAgIDIyMSxcbiAgICAgICAgICA0MyxcbiAgICAgICAgICAyNyxcbiAgICAgICAgICAxNzYsXG4gICAgICAgICAgMTg0LFxuICAgICAgICAgIDEwOFxuICAgICAgICBdXG4gICAgICB9LFxuICAgICAgXCJwdWJsaWNcIjoge1xuICAgICAgICBcInR5cGVcIjogXCJCdWZmZXJcIixcbiAgICAgICAgXCJkYXRhXCI6IFtcbiAgICAgICAgICAyMDYsXG4gICAgICAgICAgMTY4LFxuICAgICAgICAgIDI0NCxcbiAgICAgICAgICA5MyxcbiAgICAgICAgICA4OCxcbiAgICAgICAgICAyMjIsXG4gICAgICAgICAgMjE4LFxuICAgICAgICAgIDIzMSxcbiAgICAgICAgICAzNCxcbiAgICAgICAgICA4NyxcbiAgICAgICAgICAyMTgsXG4gICAgICAgICAgMjI2LFxuICAgICAgICAgIDE5MixcbiAgICAgICAgICAxNSxcbiAgICAgICAgICAzMixcbiAgICAgICAgICAxNixcbiAgICAgICAgICAyMjAsXG4gICAgICAgICAgMTU3LFxuICAgICAgICAgIDE2NixcbiAgICAgICAgICA3MyxcbiAgICAgICAgICAxMixcbiAgICAgICAgICA5NCxcbiAgICAgICAgICAxMTQsXG4gICAgICAgICAgMixcbiAgICAgICAgICAyNDgsXG4gICAgICAgICAgODcsXG4gICAgICAgICAgMzgsXG4gICAgICAgICAgODQsXG4gICAgICAgICAgMTI3LFxuICAgICAgICAgIDU4LFxuICAgICAgICAgIDIyLFxuICAgICAgICAgIDI0XG4gICAgICAgIF1cbiAgICAgIH1cbiAgICB9LFxuICAgIFwic2lnbmF0dXJlXCI6IHtcbiAgICAgIFwidHlwZVwiOiBcIkJ1ZmZlclwiLFxuICAgICAgXCJkYXRhXCI6IFtcbiAgICAgICAgNTQsXG4gICAgICAgIDIyMSxcbiAgICAgICAgMTM2LFxuICAgICAgICAzNyxcbiAgICAgICAgMjU1LFxuICAgICAgICAxNzIsXG4gICAgICAgIDEwMCxcbiAgICAgICAgMTEyLFxuICAgICAgICAxNDYsXG4gICAgICAgIDI0NyxcbiAgICAgICAgMjcsXG4gICAgICAgIDE2NixcbiAgICAgICAgMTU3LFxuICAgICAgICAyMTIsXG4gICAgICAgIDMxLFxuICAgICAgICA3OSxcbiAgICAgICAgMTA0LFxuICAgICAgICA3OSxcbiAgICAgICAgMjA1LFxuICAgICAgICAxOTAsXG4gICAgICAgIDEyOSxcbiAgICAgICAgMTcxLFxuICAgICAgICAyMjMsXG4gICAgICAgIDIxMCxcbiAgICAgICAgNTgsXG4gICAgICAgIDcsXG4gICAgICAgIDg2LFxuICAgICAgICAxOTcsXG4gICAgICAgIDQyLFxuICAgICAgICAxODgsXG4gICAgICAgIDE2MixcbiAgICAgICAgMTQ4LFxuICAgICAgICAxMTQsXG4gICAgICAgIDE3MixcbiAgICAgICAgMTU5LFxuICAgICAgICA0LFxuICAgICAgICA3MSxcbiAgICAgICAgMzgsXG4gICAgICAgIDE2MSxcbiAgICAgICAgMTMyLFxuICAgICAgICAxOCxcbiAgICAgICAgMjEzLFxuICAgICAgICAxODUsXG4gICAgICAgIDE0OCxcbiAgICAgICAgMjE3LFxuICAgICAgICAxNzUsXG4gICAgICAgIDksXG4gICAgICAgIDYwLFxuICAgICAgICA2NixcbiAgICAgICAgMjYsXG4gICAgICAgIDIwNSxcbiAgICAgICAgMTExLFxuICAgICAgICAxNDAsXG4gICAgICAgIDE5NixcbiAgICAgICAgMTg2LFxuICAgICAgICA4NSxcbiAgICAgICAgNjgsXG4gICAgICAgIDIxOCxcbiAgICAgICAgMTM3LFxuICAgICAgICA3MyxcbiAgICAgICAgMCxcbiAgICAgICAgNTIsXG4gICAgICAgIDE5MixcbiAgICAgICAgOVxuICAgICAgXVxuICAgIH0sXG4gICAgXCJrZXlJZFwiOiAxXG4gIH0sXG4gIFwicmVnaXN0cmF0aW9uSWRcIjogMjM3LFxuICBcImFkdlNlY3JldEtleVwiOiBcIjhzMUc5WTBLUVh3NDRKdmM5YllMV2RCelJ0bXRZSmpzdDJNWnpSWEY4dHc9XCIsXG4gIFwicHJvY2Vzc2VkSGlzdG9yeU1lc3NhZ2VzXCI6IFtdLFxuICBcIm5leHRQcmVLZXlJZFwiOiAzMSxcbiAgXCJmaXJzdFVudXBsb2FkZWRQcmVLZXlJZFwiOiAzMSxcbiAgXCJhY2NvdW50U3luY0NvdW50ZXJcIjogMCxcbiAgXCJhY2NvdW50U2V0dGluZ3NcIjoge1xuICAgIFwidW5hcmNoaXZlQ2hhdHNcIjogZmFsc2VcbiAgfSxcbiAgXCJkZXZpY2VJZFwiOiBcIkJseGNxaEFHUzg2Z1VhcnVwOGZ6TmdcIixcbiAgXCJwaG9uZUlkXCI6IFwiMTlhOTkxYWItZDYzNC00Zjc1LWFkZjEtZGY4MDAwYzI3NmFmXCIsXG4gIFwiaWRlbnRpdHlJZFwiOiB7XG4gICAgXCJ0eXBlXCI6IFwiQnVmZmVyXCIsXG4gICAgXCJkYXRhXCI6IFtcbiAgICAgIDUxLFxuICAgICAgMTc3LFxuICAgICAgNzYsXG4gICAgICAxNDcsXG4gICAgICAxOTYsXG4gICAgICAxNTMsXG4gICAgICA1MixcbiAgICAgIDI0NixcbiAgICAgIDE5NixcbiAgICAgIDIyNixcbiAgICAgIDY0LFxuICAgICAgNjcsXG4gICAgICA4LFxuICAgICAgMTMsXG4gICAgICAyNTAsXG4gICAgICAxNTcsXG4gICAgICAxMzksXG4gICAgICAxNTMsXG4gICAgICA4OSxcbiAgICAgIDE3M1xuICAgIF1cbiAgfSxcbiAgXCJyZWdpc3RlcmVkXCI6IHRydWUsXG4gIFwiYmFja3VwVG9rZW5cIjoge1xuICAgIFwidHlwZVwiOiBcIkJ1ZmZlclwiLFxuICAgIFwiZGF0YVwiOiBbXG4gICAgICAxODAsXG4gICAgICAxMDgsXG4gICAgICAyMjIsXG4gICAgICAxNDYsXG4gICAgICA3OSxcbiAgICAgIDE5MixcbiAgICAgIDEzOSxcbiAgICAgIDEzNCxcbiAgICAgIDMyLFxuICAgICAgMjIyLFxuICAgICAgMjQwLFxuICAgICAgNDQsXG4gICAgICA0OSxcbiAgICAgIDE1MCxcbiAgICAgIDcyLFxuICAgICAgMTAwLFxuICAgICAgMTIwLFxuICAgICAgNDIsXG4gICAgICA3NCxcbiAgICAgIDIxNVxuICAgIF1cbiAgfSxcbiAgXCJyZWdpc3RyYXRpb25cIjoge30sXG4gIFwicGFpcmluZ0NvZGVcIjogXCI5UVpXRUdOTVwiLFxuICBcIm1lXCI6IHtcbiAgICBcImlkXCI6IFwiOTIzMDQ5MTQ3NzU4OjIxQHMud2hhdHNhcHAubmV0XCIsXG4gICAgXCJsaWRcIjogXCIzMDA4MjUyMTM3NDczNzoyMUBsaWRcIlxuICB9LFxuICBcImFjY291bnRcIjoge1xuICAgIFwiZGV0YWlsc1wiOiBcIkNONkwzNDhIRUlpUGhyOEdHQUVnQUNnQVwiLFxuICAgIFwiYWNjb3VudFNpZ25hdHVyZUtleVwiOiBcIjRKS2hEZW1DejBMdUt4R1pOOHU2d2Vvc3ZpWXhha1dGQ1BtY1c5KzZ1d2M9XCIsXG4gICAgXCJhY2NvdW50U2lnbmF0dXJlXCI6IFwiVHhMQyt5Qm16a1M5Z0NhQlRmeDFPVTgraGtjTUVqaEhyRnlVMVlua3lCc1JubmZPSlpCd0dRRDJyVnptRFVwcHhhVGV1YU9zMHRBK3RZK1JtRmV4RHc9PVwiLFxuICAgIFwiZGV2aWNlU2lnbmF0dXJlXCI6IFwiNitxaG55MXVCSDFQL0tJdzRkSTJqWTRWM3Z3cS9rTFUrQ0F4R28zaWlyRURWK201WDlyM0VOeFNHM05rcUkwQWN3MjBqSU9FYWJLckNsa21JWjdYQ2c9PVwiXG4gIH0sXG4gIFwic2lnbmFsSWRlbnRpdGllc1wiOiBbXG4gICAge1xuICAgICAgXCJpZGVudGlmaWVyXCI6IHtcbiAgICAgICAgXCJuYW1lXCI6IFwiOTIzMDQ5MTQ3NzU4OjIxQHMud2hhdHNhcHAubmV0XCIsXG4gICAgICAgIFwiZGV2aWNlSWRcIjogMFxuICAgICAgfSxcbiAgICAgIFwiaWRlbnRpZmllcktleVwiOiB7XG4gICAgICAgIFwidHlwZVwiOiBcIkJ1ZmZlclwiLFxuICAgICAgICBcImRhdGFcIjogW1xuICAgICAgICAgIDUsXG4gICAgICAgICAgMjI0LFxuICAgICAgICAgIDE0NixcbiAgICAgICAgICAxNjEsXG4gICAgICAgICAgMTMsXG4gICAgICAgICAgMjMzLFxuICAgICAgICAgIDEzMCxcbiAgICAgICAgICAyMDcsXG4gICAgICAgICAgNjYsXG4gICAgICAgICAgMjM4LFxuICAgICAgICAgIDQzLFxuICAgICAgICAgIDE3LFxuICAgICAgICAgIDE1MyxcbiAgICAgICAgICA1NSxcbiAgICAgICAgICAyMDMsXG4gICAgICAgICAgMTg2LFxuICAgICAgICAgIDE5MyxcbiAgICAgICAgICAyMzQsXG4gICAgICAgICAgNDQsXG4gICAgICAgICAgMTkwLFxuICAgICAgICAgIDM4LFxuICAgICAgICAgIDQ5LFxuICAgICAgICAgIDEwNixcbiAgICAgICAgICA2OSxcbiAgICAgICAgICAxMzMsXG4gICAgICAgICAgOCxcbiAgICAgICAgICAyNDksXG4gICAgICAgICAgMTU2LFxuICAgICAgICAgIDkxLFxuICAgICAgICAgIDIyMyxcbiAgICAgICAgICAxODYsXG4gICAgICAgICAgMTg3LFxuICAgICAgICAgIDdcbiAgICAgICAgXVxuICAgICAgfVxuICAgIH1cbiAgXSxcbiAgXCJwbGF0Zm9ybVwiOiBcImFuZHJvaWRcIixcbiAgXCJsYXN0QWNjb3VudFN5bmNUaW1lc3RhbXBcIjogMTc0MjgzMzU0N1xufSIsCiAgImFwcC1zdGF0ZS1zeW5jLWtleS11bmRlZmluZWQuanNvbiI6IHt9Cn0=",  // PUT SESSION ID HERE 
  errorChat : process.env.ERROR_CHAT || "",
  KOYEB_API : process.env.KOYEB_API  || "false",

  REMOVE_BG_KEY : process.env.REMOVE_BG_KEY  || "",
  OPENAI_API_KEY: process.env.OPENAI_API_KEY || "",
  HEROKU_API_KEY: process.env.HEROKU_API_KEY || "",
  HEROKU_APP_NAME:process.env.HEROKU_APP_NAME|| "",
  antilink_values:process.env.ANTILINK_VALUES|| "all",
  HEROKU: process.env.HEROKU_APP_NAME && process.env.HEROKU_API_KEY,

  aitts_Voice_Id : process.env.AITTS_ID || "37",
  ELEVENLAB_API_KEY: process.env.ELEVENLAB_API_KEY || "",
  WORKTYPE: process.env.WORKTYPE||process.env.MODE || "private",
  LANG: process.env.THEME ? process.env.THEME.toUpperCase() : "SUHAIL",



};




























global.isMongodb = false; 
let file = require.resolve(__filename)
fs.watchFile(file, () => { fs.unwatchFile(file);console.log(`Update'${__filename}'`);delete require.cache[file];	require(file); })
 

// ========================= [ Disables in V.1.2.8 ] ===============================\\  
  //style : process.env.STYLE || "2",  // put '1' & "2" here to check bot styles
  //readmessage:process.env.READ_MESSAGE|| "false",
  //warncount: process.env.WARN_COUNT || 3,
  //userImages:process.env.USER_IMAGES|| "text",  // SET IMAGE AND VIDEO URL FOR BOT MENUS 
  //disablepm: process.env.DISABLE_PM || "false",
  //MsgsInLog: process.env.MSGS_IN_LOG|| "false", // "true"  to see messages , "log" to open logs , "false" to hide logs messages
  //readcmds:process.env.READ_COMMANDS|| "false", 
  //alwaysonline:process.env.WAPRESENCE|| "unavailable", // 'unavailable' | 'online' | 'composing' | 'recording' | 'paused'
  //read_status: process.env.AUTO_READ_STATUS || "false",
  //save_status: process.env.AUTO_SAVE_STATUS || "false",
 
