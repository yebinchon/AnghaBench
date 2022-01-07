
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmd ;
struct TYPE_3__ {int cfg; int cmd_id; } ;
typedef TYPE_1__ audpp_cmd_cfg ;


 int AUDPP_CMD_CFG ;
 int AUDPP_CMD_CFG_ENABLE ;
 int AUDPP_CMD_CFG_SLEEP ;
 int audpp_send_queue1 (TYPE_1__*,int) ;

__attribute__((used)) static int audpp_dsp_config(int enable)
{
 audpp_cmd_cfg cmd;

 cmd.cmd_id = AUDPP_CMD_CFG;
 cmd.cfg = enable ? AUDPP_CMD_CFG_ENABLE : AUDPP_CMD_CFG_SLEEP;

 return audpp_send_queue1(&cmd, sizeof(cmd));
}
