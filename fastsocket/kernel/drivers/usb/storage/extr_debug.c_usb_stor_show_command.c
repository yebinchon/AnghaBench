
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int cmd_len; int * cmnd; } ;
 int US_DEBUGP (char*,...) ;
 int US_DEBUGPX (char*,...) ;
void usb_stor_show_command(struct scsi_cmnd *srb)
{
 char *what = ((void*)0);
 int i;

 switch (srb->cmnd[0]) {
 case 140: what = "TEST_UNIT_READY"; break;
 case 156: what = "REZERO_UNIT"; break;
 case 158: what = "REQUEST_SENSE"; break;
 case 205: what = "FORMAT_UNIT"; break;
 case 172: what = "READ_BLOCK_LIMITS"; break;
 case 163: what = "REASSIGN_BLOCKS"; break;
 case 173: what = "READ_6"; break;
 case 135: what = "WRITE_6"; break;
 case 148: what = "SEEK_6"; break;
 case 165: what = "READ_REVERSE"; break;
 case 133: what = "WRITE_FILEMARKS"; break;
 case 143: what = "SPACE"; break;
 case 185: what = "INQUIRY"; break;
 case 161: what = "RECOVER_BUFFERED_DATA"; break;
 case 180: what = "MODE_SELECT"; break;
 case 157: what = "RESERVE"; break;
 case 160: what = "RELEASE"; break;
 case 208: what = "COPY"; break;
 case 206: what = "ERASE"; break;
 case 178: what = "MODE_SENSE"; break;
 case 142: what = "START_STOP"; break;
 case 162: what = "RECEIVE_DIAGNOSTIC"; break;
 case 147: what = "SEND_DIAGNOSTIC"; break;
 case 211: what = "ALLOW_MEDIUM_REMOVAL"; break;
 case 144: what = "SET_WINDOW"; break;
 case 170: what = "READ_CAPACITY"; break;
 case 175: what = "READ_10"; break;
 case 137: what = "WRITE_10"; break;
 case 149: what = "SEEK_10"; break;
 case 129: what = "WRITE_VERIFY"; break;
 case 138: what = "VERIFY"; break;
 case 153: what = "SEARCH_HIGH"; break;
 case 155: what = "SEARCH_EQUAL"; break;
 case 151: what = "SEARCH_LOW"; break;
 case 145: what = "SET_LIMITS"; break;
 case 166: what = "READ_POSITION"; break;
 case 141: what = "SYNCHRONIZE_CACHE"; break;
 case 184: what = "LOCK_UNLOCK_CACHE"; break;
 case 169: what = "READ_DEFECT_DATA"; break;
 case 181: what = "MEDIUM_SCAN"; break;
 case 209: what = "COMPARE"; break;
 case 207: what = "COPY_VERIFY"; break;
 case 134: what = "WRITE_BUFFER"; break;
 case 171: what = "READ_BUFFER"; break;
 case 139: what = "UPDATE_BLOCK"; break;
 case 167: what = "READ_LONG"; break;
 case 132: what = "WRITE_LONG"; break;
 case 210: what = "CHANGE_DEFINITION"; break;
 case 130: what = "WRITE_SAME"; break;
 case 193: what = "READ SUBCHANNEL"; break;
 case 164: what = "READ_TOC"; break;
 case 194: what = "READ HEADER"; break;
 case 199: what = "PLAY AUDIO (10)"; break;
 case 198: what = "PLAY AUDIO MSF"; break;
 case 202:
  what = "GET EVENT/STATUS NOTIFICATION"; break;
 case 200: what = "PAUSE/RESUME"; break;
 case 183: what = "LOG_SELECT"; break;
 case 182: what = "LOG_SENSE"; break;
 case 186: what = "STOP PLAY/SCAN"; break;
 case 195: what = "READ DISC INFORMATION"; break;
 case 192:
  what = "READ TRACK INFORMATION"; break;
 case 190: what = "RESERVE TRACK"; break;
 case 188: what = "SEND OPC"; break;
 case 179: what = "MODE_SELECT_10"; break;
 case 191: what = "REPAIR TRACK"; break;
 case 0x59: what = "READ MASTER CUE"; break;
 case 177: what = "MODE_SENSE_10"; break;
 case 203: what = "CLOSE TRACK/SESSION"; break;
 case 0x5C: what = "READ BUFFER CAPACITY"; break;
 case 0x5D: what = "SEND CUE SHEET"; break;
 case 204: what = "BLANK"; break;
 case 159: what = "REPORT LUNS"; break;
 case 176: what = "MOVE_MEDIUM or PLAY AUDIO (12)"; break;
 case 174: what = "READ_12"; break;
 case 136: what = "WRITE_12"; break;
 case 128: what = "WRITE_VERIFY_12"; break;
 case 152: what = "SEARCH_HIGH_12"; break;
 case 154: what = "SEARCH_EQUAL_12"; break;
 case 150: what = "SEARCH_LOW_12"; break;
 case 146: what = "SEND_VOLUME_TAG"; break;
 case 168: what = "READ_ELEMENT_STATUS"; break;
 case 196: what = "READ CD MSF"; break;
 case 189: what = "SCAN"; break;
 case 187: what = "SET CD SPEED"; break;
 case 201: what = "MECHANISM STATUS"; break;
 case 197: what = "READ CD"; break;
 case 0xE1: what = "WRITE CONTINUE"; break;
 case 131: what = "WRITE_LONG_2"; break;
 default: what = "(unknown command)"; break;
 }
 US_DEBUGP("Command %s (%d bytes)\n", what, srb->cmd_len);
 US_DEBUGP("");
 for (i = 0; i < srb->cmd_len && i < 16; i++)
  US_DEBUGPX(" %02x", srb->cmnd[i]);
 US_DEBUGPX("\n");
}
