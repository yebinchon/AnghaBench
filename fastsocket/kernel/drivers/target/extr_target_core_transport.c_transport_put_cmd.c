
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int transport_state; int t_state_lock; int t_fe_count; } ;


 int CMD_T_DEV_ACTIVE ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int target_remove_from_state_list (struct se_cmd*) ;
 int transport_free_pages (struct se_cmd*) ;
 int transport_release_cmd (struct se_cmd*) ;

__attribute__((used)) static void transport_put_cmd(struct se_cmd *cmd)
{
 unsigned long flags;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 if (atomic_read(&cmd->t_fe_count) &&
     !atomic_dec_and_test(&cmd->t_fe_count)) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  return;
 }

 if (cmd->transport_state & CMD_T_DEV_ACTIVE) {
  cmd->transport_state &= ~CMD_T_DEV_ACTIVE;
  target_remove_from_state_list(cmd);
 }
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 transport_free_pages(cmd);
 transport_release_cmd(cmd);
 return;
}
