
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int se_cmd_flags; int transport_state; int t_state_lock; TYPE_1__* se_tfo; int t_transport_stop_comp; int t_state; int transport_lun_fe_stop_comp; int transport_lun_stop_comp; } ;
struct TYPE_2__ {int (* get_task_tag ) (struct se_cmd*) ;int (* get_cmd_state ) (struct se_cmd*) ;} ;


 int CMD_T_ACTIVE ;
 int CMD_T_LUN_STOP ;
 int CMD_T_STOP ;
 int SCF_SCSI_TMR_CDB ;
 int SCF_SE_LUN_CMD ;
 int SCF_SUPPORTED_SAM_OPCODE ;
 int complete (int *) ;
 int pr_debug (char*,struct se_cmd*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct se_cmd*) ;
 int stub2 (struct se_cmd*) ;
 int stub3 (struct se_cmd*) ;
 int stub4 (struct se_cmd*) ;
 int stub5 (struct se_cmd*) ;
 int target_remove_from_state_list (struct se_cmd*) ;
 int wait_for_completion (int *) ;

bool transport_wait_for_tasks(struct se_cmd *cmd)
{
 unsigned long flags;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 if (!(cmd->se_cmd_flags & SCF_SE_LUN_CMD) &&
     !(cmd->se_cmd_flags & SCF_SCSI_TMR_CDB)) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  return 0;
 }

 if (!(cmd->se_cmd_flags & SCF_SUPPORTED_SAM_OPCODE) &&
     !(cmd->se_cmd_flags & SCF_SCSI_TMR_CDB)) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  return 0;
 }







 if (cmd->transport_state & CMD_T_LUN_STOP) {
  pr_debug("wait_for_tasks: Stopping"
   " wait_for_completion(&cmd->t_tasktransport_lun_fe"
   "_stop_comp); for ITT: 0x%08x\n",
   cmd->se_tfo->get_task_tag(cmd));







  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  complete(&cmd->transport_lun_stop_comp);
  wait_for_completion(&cmd->transport_lun_fe_stop_comp);
  spin_lock_irqsave(&cmd->t_state_lock, flags);

  target_remove_from_state_list(cmd);





  pr_debug("wait_for_tasks: Stopped"
   " wait_for_completion(&cmd->t_tasktransport_lun_fe_"
   "stop_comp); for ITT: 0x%08x\n",
   cmd->se_tfo->get_task_tag(cmd));

  cmd->transport_state &= ~CMD_T_LUN_STOP;
 }

 if (!(cmd->transport_state & CMD_T_ACTIVE)) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  return 0;
 }

 cmd->transport_state |= CMD_T_STOP;

 pr_debug("wait_for_tasks: Stopping %p ITT: 0x%08x"
  " i_state: %d, t_state: %d, CMD_T_STOP\n",
  cmd, cmd->se_tfo->get_task_tag(cmd),
  cmd->se_tfo->get_cmd_state(cmd), cmd->t_state);

 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 wait_for_completion(&cmd->t_transport_stop_comp);

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 cmd->transport_state &= ~(CMD_T_ACTIVE | CMD_T_STOP);

 pr_debug("wait_for_tasks: Stopped wait_for_completion("
  "&cmd->t_transport_stop_comp) for ITT: 0x%08x\n",
  cmd->se_tfo->get_task_tag(cmd));

 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 return 1;
}
