
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int transport_state; int t_state_lock; int task_stop_comp; } ;


 int CMD_T_BUSY ;
 int CMD_T_REQUEST_STOP ;
 int pr_debug (char*,struct se_cmd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

bool target_stop_cmd(struct se_cmd *cmd, unsigned long *flags)
{
 bool was_active = 0;

 if (cmd->transport_state & CMD_T_BUSY) {
  cmd->transport_state |= CMD_T_REQUEST_STOP;
  spin_unlock_irqrestore(&cmd->t_state_lock, *flags);

  pr_debug("cmd %p waiting to complete\n", cmd);
  wait_for_completion(&cmd->task_stop_comp);
  pr_debug("cmd %p stopped successfully\n", cmd);

  spin_lock_irqsave(&cmd->t_state_lock, *flags);
  cmd->transport_state &= ~CMD_T_REQUEST_STOP;
  cmd->transport_state &= ~CMD_T_BUSY;
  was_active = 1;
 }

 return was_active;
}
