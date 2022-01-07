
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int flush_cmd ;


 int AUDPP_CMD_DEC_CTRL ;
 int AUDPP_CMD_DEC_CTRL_LEN ;
 int AUDPP_CMD_FLUSH_V ;
 int AUDPP_CMD_UPDATE_V ;
 unsigned int CH_COUNT ;
 int EINVAL ;
 int audpp_send_queue1 (int*,int) ;
 int memset (int*,int ,int) ;

int audpp_flush(unsigned id)
{
 u16 flush_cmd[AUDPP_CMD_DEC_CTRL_LEN / sizeof(unsigned short)];

 if (id >= CH_COUNT)
  return -EINVAL;

 memset(flush_cmd, 0, sizeof(flush_cmd));

 flush_cmd[0] = AUDPP_CMD_DEC_CTRL;
 flush_cmd[1 + id] = AUDPP_CMD_UPDATE_V | AUDPP_CMD_FLUSH_V;

 return audpp_send_queue1(flush_cmd, sizeof(flush_cmd));
}
