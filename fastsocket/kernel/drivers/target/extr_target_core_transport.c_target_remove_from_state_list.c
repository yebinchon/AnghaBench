
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int execute_task_lock; } ;
struct se_cmd {int transport_state; int state_active; int state_list; struct se_device* se_dev; } ;


 int CMD_T_BUSY ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void target_remove_from_state_list(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 unsigned long flags;

 if (!dev)
  return;

 if (cmd->transport_state & CMD_T_BUSY)
  return;

 spin_lock_irqsave(&dev->execute_task_lock, flags);
 if (cmd->state_active) {
  list_del(&cmd->state_list);
  cmd->state_active = 0;
 }
 spin_unlock_irqrestore(&dev->execute_task_lock, flags);
}
