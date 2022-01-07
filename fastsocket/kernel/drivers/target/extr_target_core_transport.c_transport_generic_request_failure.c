
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct se_cmd {int t_state; int transport_state; TYPE_4__* se_dev; int * t_task_cdb; TYPE_3__* se_tfo; int orig_fe_lun; TYPE_2__* se_sess; int scsi_status; } ;
typedef int sense_reason_t ;
struct TYPE_5__ {int emulate_ua_intlck_ctrl; } ;
struct TYPE_8__ {TYPE_1__ dev_attrib; } ;
struct TYPE_7__ {int (* get_cmd_state ) (struct se_cmd*) ;int (* queue_status ) (struct se_cmd*) ;int (* get_task_tag ) (struct se_cmd*) ;} ;
struct TYPE_6__ {int se_node_acl; } ;


 int ASCQ_2CH_PREVIOUS_RESERVATION_CONFLICT_STATUS ;
 int CMD_T_ACTIVE ;
 int CMD_T_SENT ;
 int CMD_T_STOP ;
 int EAGAIN ;
 int ENOMEM ;
 int SAM_STAT_RESERVATION_CONFLICT ;
 int TRANSPORT_COMPLETE_QF_OK ;
 int core_scsi3_ua_allocate (int ,int ,int,int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int ,int) ;
 int stub1 (struct se_cmd*) ;
 int stub2 (struct se_cmd*) ;
 int stub3 (struct se_cmd*) ;
 int transport_cmd_check_stop_to_fabric (struct se_cmd*) ;
 int transport_complete_task_attr (struct se_cmd*) ;
 int transport_handle_queue_full (struct se_cmd*,TYPE_4__*) ;
 int transport_lun_remove_cmd (struct se_cmd*) ;
 int transport_send_check_condition_and_sense (struct se_cmd*,int,int ) ;

void transport_generic_request_failure(struct se_cmd *cmd,
  sense_reason_t sense_reason)
{
 int ret = 0;

 pr_debug("-----[ Storage Engine Exception for cmd: %p ITT: 0x%08x"
  " CDB: 0x%02x\n", cmd, cmd->se_tfo->get_task_tag(cmd),
  cmd->t_task_cdb[0]);
 pr_debug("-----[ i_state: %d t_state: %d sense_reason: %d\n",
  cmd->se_tfo->get_cmd_state(cmd),
  cmd->t_state, sense_reason);
 pr_debug("-----[ CMD_T_ACTIVE: %d CMD_T_STOP: %d CMD_T_SENT: %d\n",
  (cmd->transport_state & CMD_T_ACTIVE) != 0,
  (cmd->transport_state & CMD_T_STOP) != 0,
  (cmd->transport_state & CMD_T_SENT) != 0);




 transport_complete_task_attr(cmd);

 switch (sense_reason) {
 case 134:
 case 129:
 case 137:
 case 136:
 case 132:
 case 135:
 case 130:
 case 128:
 case 141:
 case 140:
 case 138:
 case 139:
  break;
 case 133:
  sense_reason = 135;
  break;
 case 131:






  cmd->scsi_status = SAM_STAT_RESERVATION_CONFLICT;







  if (cmd->se_sess &&
      cmd->se_dev->dev_attrib.emulate_ua_intlck_ctrl == 2)
   core_scsi3_ua_allocate(cmd->se_sess->se_node_acl,
    cmd->orig_fe_lun, 0x2C,
    ASCQ_2CH_PREVIOUS_RESERVATION_CONFLICT_STATUS);

  ret = cmd->se_tfo->queue_status(cmd);
  if (ret == -EAGAIN || ret == -ENOMEM)
   goto queue_full;
  goto check_stop;
 default:
  pr_err("Unknown transport error for CDB 0x%02x: %d\n",
   cmd->t_task_cdb[0], sense_reason);
  sense_reason = 129;
  break;
 }

 ret = transport_send_check_condition_and_sense(cmd, sense_reason, 0);
 if (ret == -EAGAIN || ret == -ENOMEM)
  goto queue_full;

check_stop:
 transport_lun_remove_cmd(cmd);
 if (!transport_cmd_check_stop_to_fabric(cmd))
  ;
 return;

queue_full:
 cmd->t_state = TRANSPORT_COMPLETE_QF_OK;
 transport_handle_queue_full(cmd, cmd->se_dev);
}
