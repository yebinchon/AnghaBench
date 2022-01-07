
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_cmd_lock; } ;
struct se_cmd {int transport_state; int se_lun_node; int t_state_lock; struct se_lun* se_lun; } ;


 int CMD_T_DEV_ACTIVE ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int target_remove_from_state_list (struct se_cmd*) ;

__attribute__((used)) static void transport_lun_remove_cmd(struct se_cmd *cmd)
{
 struct se_lun *lun = cmd->se_lun;
 unsigned long flags;

 if (!lun)
  return;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 if (cmd->transport_state & CMD_T_DEV_ACTIVE) {
  cmd->transport_state &= ~CMD_T_DEV_ACTIVE;
  target_remove_from_state_list(cmd);
 }
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 spin_lock_irqsave(&lun->lun_cmd_lock, flags);
 if (!list_empty(&cmd->se_lun_node))
  list_del_init(&cmd->se_lun_node);
 spin_unlock_irqrestore(&lun->lun_cmd_lock, flags);
}
