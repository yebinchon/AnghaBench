
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {int dev_qf_count; int qf_cmd_lock; } ;
struct se_cmd {TYPE_1__* se_dev; int se_qf_node; } ;
struct TYPE_2__ {int qf_work_queue; int qf_cmd_lock; int qf_cmd_list; } ;


 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int smp_mb__after_atomic_inc () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void transport_handle_queue_full(
 struct se_cmd *cmd,
 struct se_device *dev)
{
 spin_lock_irq(&dev->qf_cmd_lock);
 list_add_tail(&cmd->se_qf_node, &cmd->se_dev->qf_cmd_list);
 atomic_inc(&dev->dev_qf_count);
 smp_mb__after_atomic_inc();
 spin_unlock_irq(&cmd->se_dev->qf_cmd_lock);

 schedule_work(&cmd->se_dev->qf_work_queue);
}
