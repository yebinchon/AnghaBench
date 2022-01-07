
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int cmd ;


 int AUDPP_CMD_CFG_OBJECT_PARAMS ;
 int AUDPP_CMD_CFG_OBJ_UPDATE ;
 int AUDPP_CMD_VOLUME_PAN ;
 int EINVAL ;
 int audpp_send_queue3 (int*,int) ;
 int memset (int*,int ,int) ;

int audpp_set_volume_and_pan(unsigned id, unsigned volume, int pan)
{

 uint16_t cmd[11];

 if (id > 6)
  return -EINVAL;

 memset(cmd, 0, sizeof(cmd));
 cmd[0] = AUDPP_CMD_CFG_OBJECT_PARAMS;
 cmd[1 + id] = AUDPP_CMD_CFG_OBJ_UPDATE;
 cmd[8] = AUDPP_CMD_VOLUME_PAN;
 cmd[9] = volume;
 cmd[10] = pan;

 return audpp_send_queue3(cmd, sizeof(cmd));
}
