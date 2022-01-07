
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int se_cmd_flags; scalar_t__ data_direction; int se_dev; int t_state; TYPE_1__* se_tfo; int t_state_lock; int t_fe_count; scalar_t__ data_length; } ;
typedef int sense_reason_t ;
struct TYPE_2__ {int (* write_pending ) (struct se_cmd*) ;} ;


 scalar_t__ DMA_TO_DEVICE ;
 int EAGAIN ;
 int ENOMEM ;
 int SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int TRANSPORT_COMPLETE_QF_WP ;
 int TRANSPORT_WRITE_PENDING ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int pr_debug (char*,struct se_cmd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct se_cmd*) ;
 int target_add_to_state_list (struct se_cmd*) ;
 int target_execute_cmd (struct se_cmd*) ;
 int transport_cmd_check_stop (struct se_cmd*,int) ;
 int transport_generic_get_mem (struct se_cmd*) ;
 int transport_handle_queue_full (struct se_cmd*,int ) ;

sense_reason_t
transport_generic_new_cmd(struct se_cmd *cmd)
{
 int ret = 0;






 if (!(cmd->se_cmd_flags & SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC) &&
     cmd->data_length) {
  ret = transport_generic_get_mem(cmd);
  if (ret < 0)
   return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }

 atomic_inc(&cmd->t_fe_count);






 target_add_to_state_list(cmd);
 if (cmd->data_direction != DMA_TO_DEVICE) {
  target_execute_cmd(cmd);
  return 0;
 }

 spin_lock_irq(&cmd->t_state_lock);
 cmd->t_state = TRANSPORT_WRITE_PENDING;
 spin_unlock_irq(&cmd->t_state_lock);

 transport_cmd_check_stop(cmd, 0);

 ret = cmd->se_tfo->write_pending(cmd);
 if (ret == -EAGAIN || ret == -ENOMEM)
  goto queue_full;


 WARN_ON(ret);

 return (!ret) ? 0 : TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

queue_full:
 pr_debug("Handling write_pending QUEUE__FULL: se_cmd: %p\n", cmd);
 cmd->t_state = TRANSPORT_COMPLETE_QF_WP;
 transport_handle_queue_full(cmd, cmd->se_dev);
 return 0;
}
