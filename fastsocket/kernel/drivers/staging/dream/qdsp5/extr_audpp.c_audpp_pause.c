
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int pause_cmd ;


 int AUDPP_CMD_DEC_CTRL ;
 int AUDPP_CMD_DEC_CTRL_LEN ;
 int AUDPP_CMD_PAUSE_V ;
 int AUDPP_CMD_RESUME_V ;
 int AUDPP_CMD_UPDATE_V ;
 unsigned int CH_COUNT ;
 int EINVAL ;
 int audpp_send_queue1 (int*,int) ;
 int memset (int*,int ,int) ;

int audpp_pause(unsigned id, int pause)
{

 u16 pause_cmd[AUDPP_CMD_DEC_CTRL_LEN / sizeof(unsigned short)];

 if (id >= CH_COUNT)
  return -EINVAL;

 memset(pause_cmd, 0, sizeof(pause_cmd));

 pause_cmd[0] = AUDPP_CMD_DEC_CTRL;
 if (pause == 1)
  pause_cmd[1 + id] = AUDPP_CMD_UPDATE_V | AUDPP_CMD_PAUSE_V;
 else if (pause == 0)
  pause_cmd[1 + id] = AUDPP_CMD_UPDATE_V | AUDPP_CMD_RESUME_V;
 else
  return -EINVAL;

 return audpp_send_queue1(pause_cmd, sizeof(pause_cmd));
}
