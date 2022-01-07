
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_lun {int dummy; } ;
struct se_cmd {int transport_state; TYPE_1__* se_tfo; int transport_lun_stop_comp; int t_state_lock; } ;
struct TYPE_2__ {int (* get_task_tag ) (struct se_cmd*) ;} ;


 int CMD_T_BUSY ;
 int CMD_T_LUN_FE_STOP ;
 int CMD_T_LUN_STOP ;
 int CMD_T_SENT ;
 int CMD_T_STOP ;
 int EPERM ;
 int pr_debug (char*,struct se_cmd*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct se_cmd*) ;
 int stub2 (struct se_cmd*) ;
 int stub3 (struct se_cmd*) ;
 int target_stop_cmd (struct se_cmd*,unsigned long*) ;
 int transport_cmd_check_stop (struct se_cmd*,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int transport_lun_wait_for_tasks(struct se_cmd *cmd, struct se_lun *lun)
{
 unsigned long flags;
 int ret = 0;





 spin_lock_irqsave(&cmd->t_state_lock, flags);
 if (cmd->transport_state & CMD_T_STOP) {
  cmd->transport_state &= ~CMD_T_LUN_STOP;

  pr_debug("ConfigFS ITT[0x%08x] - CMD_T_STOP, skipping\n",
    cmd->se_tfo->get_task_tag(cmd));
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  transport_cmd_check_stop(cmd, 0);
  return -EPERM;
 }
 cmd->transport_state |= CMD_T_LUN_FE_STOP;
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);


 spin_lock_irqsave(&cmd->t_state_lock, flags);
 if ((cmd->transport_state & CMD_T_BUSY) &&
     (cmd->transport_state & CMD_T_SENT)) {
  if (!target_stop_cmd(cmd, &flags))
   ret++;
 }
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 pr_debug("ConfigFS: cmd: %p stop tasks ret:"
   " %d\n", cmd, ret);
 if (!ret) {
  pr_debug("ConfigFS: ITT[0x%08x] - stopping cmd....\n",
    cmd->se_tfo->get_task_tag(cmd));
  wait_for_completion(&cmd->transport_lun_stop_comp);
  pr_debug("ConfigFS: ITT[0x%08x] - stopped cmd....\n",
    cmd->se_tfo->get_task_tag(cmd));
 }

 return 0;
}
