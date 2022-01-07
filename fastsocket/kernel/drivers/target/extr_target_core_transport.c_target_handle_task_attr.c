
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {int delayed_cmd_lock; int delayed_cmd_list; int dev_ordered_sync; int simple_cmds; TYPE_1__* transport; } ;
struct se_cmd {int sam_task_attr; int se_ordered_id; int * t_task_cdb; int se_delayed_node; struct se_device* se_dev; } ;
struct TYPE_2__ {scalar_t__ transport_type; } ;




 scalar_t__ TRANSPORT_PLUGIN_PHBA_PDEV ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,int,...) ;
 int smp_mb__after_atomic_inc () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool target_handle_task_attr(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;

 if (dev->transport->transport_type == TRANSPORT_PLUGIN_PHBA_PDEV)
  return 0;





 switch (cmd->sam_task_attr) {
 case 129:
  pr_debug("Added HEAD_OF_QUEUE for CDB: 0x%02x, "
    "se_ordered_id: %u\n",
    cmd->t_task_cdb[0], cmd->se_ordered_id);
  return 0;
 case 128:
  atomic_inc(&dev->dev_ordered_sync);
  smp_mb__after_atomic_inc();

  pr_debug("Added ORDERED for CDB: 0x%02x to ordered list, "
    " se_ordered_id: %u\n",
    cmd->t_task_cdb[0], cmd->se_ordered_id);





  if (!atomic_read(&dev->simple_cmds))
   return 0;
  break;
 default:



  atomic_inc(&dev->simple_cmds);
  smp_mb__after_atomic_inc();
  break;
 }

 if (atomic_read(&dev->dev_ordered_sync) == 0)
  return 0;

 spin_lock(&dev->delayed_cmd_lock);
 list_add_tail(&cmd->se_delayed_node, &dev->delayed_cmd_list);
 spin_unlock(&dev->delayed_cmd_lock);

 pr_debug("Added CDB: 0x%02x Task Attr: 0x%02x to"
  " delayed CMD list, se_ordered_id: %u\n",
  cmd->t_task_cdb[0], cmd->sam_task_attr,
  cmd->se_ordered_id);
 return 1;
}
