
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_rmh {int cmd_len; int cmd_idx; int dsp_stat; int stat_len; int * cmd; } ;
struct TYPE_2__ {int st_type; int st_length; int opcode; } ;


 int CMD_LAST_INDEX ;
 TYPE_1__* pcxhr_dsp_cmds ;
 scalar_t__ snd_BUG_ON (int) ;

void pcxhr_init_rmh(struct pcxhr_rmh *rmh, int cmd)
{
 if (snd_BUG_ON(cmd >= CMD_LAST_INDEX))
  return;
 rmh->cmd[0] = pcxhr_dsp_cmds[cmd].opcode;
 rmh->cmd_len = 1;
 rmh->stat_len = pcxhr_dsp_cmds[cmd].st_length;
 rmh->dsp_stat = pcxhr_dsp_cmds[cmd].st_type;
 rmh->cmd_idx = cmd;
}
