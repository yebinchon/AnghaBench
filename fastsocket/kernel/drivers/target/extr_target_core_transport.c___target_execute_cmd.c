
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int transport_state; int t_state_lock; scalar_t__ (* execute_cmd ) (struct se_cmd*) ;} ;
typedef scalar_t__ sense_reason_t ;


 int CMD_T_BUSY ;
 int CMD_T_SENT ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (struct se_cmd*) ;
 int transport_generic_request_failure (struct se_cmd*,scalar_t__) ;

__attribute__((used)) static void __target_execute_cmd(struct se_cmd *cmd)
{
 sense_reason_t ret;

 spin_lock_irq(&cmd->t_state_lock);
 cmd->transport_state |= (CMD_T_BUSY|CMD_T_SENT);
 spin_unlock_irq(&cmd->t_state_lock);

 if (cmd->execute_cmd) {
  ret = cmd->execute_cmd(cmd);
  if (ret) {
   spin_lock_irq(&cmd->t_state_lock);
   cmd->transport_state &= ~(CMD_T_BUSY|CMD_T_SENT);
   spin_unlock_irq(&cmd->t_state_lock);

   transport_generic_request_failure(cmd, ret);
  }
 }
}
