
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct se_device {TYPE_1__* transport; } ;
struct se_cmd {int transport_state; int se_cmd_flags; int work; int t_state_lock; int t_state; int t_transport_stop_comp; int task_stop_comp; int t_data_sg; scalar_t__ scsi_status; struct se_device* se_dev; } ;
struct TYPE_2__ {int (* transport_complete ) (struct se_cmd*,int ,int ) ;} ;


 int CMD_T_ABORTED ;
 int CMD_T_ACTIVE ;
 int CMD_T_BUSY ;
 int CMD_T_COMPLETE ;
 int CMD_T_FAILED ;
 int CMD_T_REQUEST_STOP ;
 int CMD_T_STOP ;
 scalar_t__ GOOD ;
 int INIT_WORK (int *,int ) ;
 int SCF_TRANSPORT_TASK_SENSE ;
 int TRANSPORT_COMPLETE ;
 int complete (int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct se_cmd*,int ,int ) ;
 int target_complete_failure_work ;
 int target_complete_ok_work ;
 int target_completion_wq ;
 int transport_get_sense_buffer (struct se_cmd*) ;

void target_complete_cmd(struct se_cmd *cmd, u8 scsi_status)
{
 struct se_device *dev = cmd->se_dev;
 int success = scsi_status == GOOD;
 unsigned long flags;

 cmd->scsi_status = scsi_status;


 spin_lock_irqsave(&cmd->t_state_lock, flags);
 cmd->transport_state &= ~CMD_T_BUSY;

 if (dev && dev->transport->transport_complete) {
  dev->transport->transport_complete(cmd,
    cmd->t_data_sg,
    transport_get_sense_buffer(cmd));
  if (cmd->se_cmd_flags & SCF_TRANSPORT_TASK_SENSE)
   success = 1;
 }




 if (cmd->transport_state & CMD_T_REQUEST_STOP) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  complete(&cmd->task_stop_comp);
  return;
 }

 if (!success)
  cmd->transport_state |= CMD_T_FAILED;





 if (cmd->transport_state & CMD_T_ABORTED &&
     cmd->transport_state & CMD_T_STOP) {
  spin_unlock_irqrestore(&cmd->t_state_lock, flags);
  complete(&cmd->t_transport_stop_comp);
  return;
 } else if (cmd->transport_state & CMD_T_FAILED) {
  INIT_WORK(&cmd->work, target_complete_failure_work);
 } else {
  INIT_WORK(&cmd->work, target_complete_ok_work);
 }

 cmd->t_state = TRANSPORT_COMPLETE;
 cmd->transport_state |= (CMD_T_COMPLETE | CMD_T_ACTIVE);
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 queue_work(target_completion_wq, &cmd->work);
}
