
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_device {TYPE_1__* transport; } ;
struct se_cmd {unsigned char* t_task_cdb; unsigned int data_length; TYPE_2__* se_tfo; void* execute_cmd; void* sam_task_attr; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_4__ {int (* get_fabric_name ) () ;} ;
struct TYPE_3__ {int (* get_device_type ) (struct se_device*) ;} ;
 unsigned char MI_REPORT_TARGET_PGS ;




 unsigned char MO_SET_TARGET_PGS ;
 void* MSG_HEAD_TAG ;
 int TCM_UNSUPPORTED_SCSI_OPCODE ;

 int TYPE_ROM ;


 unsigned int get_unaligned_be16 (unsigned char*) ;
 unsigned int get_unaligned_be32 (unsigned char*) ;
 int pr_warn (char*,int ,unsigned char) ;
 void* spc_emulate_inquiry ;
 void* spc_emulate_modeselect ;
 void* spc_emulate_modesense ;
 void* spc_emulate_report_luns ;
 void* spc_emulate_request_sense ;
 void* spc_emulate_testunitready ;
 int stub1 (struct se_device*) ;
 int stub2 (struct se_device*) ;
 int stub3 () ;
 void* target_emulate_report_target_port_groups ;
 void* target_emulate_set_target_port_groups ;
 void* target_scsi2_reservation_release ;
 void* target_scsi2_reservation_reserve ;
 void* target_scsi3_emulate_pr_in ;
 void* target_scsi3_emulate_pr_out ;

sense_reason_t
spc_parse_cdb(struct se_cmd *cmd, unsigned int *size)
{
 struct se_device *dev = cmd->se_dev;
 unsigned char *cdb = cmd->t_task_cdb;

 switch (cdb[0]) {
 case 148:
  *size = cdb[4];
  cmd->execute_cmd = spc_emulate_modeselect;
  break;
 case 147:
  *size = (cdb[7] << 8) + cdb[8];
  cmd->execute_cmd = spc_emulate_modeselect;
  break;
 case 146:
  *size = cdb[4];
  cmd->execute_cmd = spc_emulate_modesense;
  break;
 case 145:
  *size = (cdb[7] << 8) + cdb[8];
  cmd->execute_cmd = spc_emulate_modesense;
  break;
 case 152:
 case 151:
  *size = (cdb[7] << 8) + cdb[8];
  break;
 case 144:
  *size = (cdb[7] << 8) + cdb[8];
  cmd->execute_cmd = target_scsi3_emulate_pr_in;
  break;
 case 143:
  *size = (cdb[7] << 8) + cdb[8];
  cmd->execute_cmd = target_scsi3_emulate_pr_out;
  break;
 case 139:
 case 138:
  if (cdb[0] == 138)
   *size = (cdb[7] << 8) | cdb[8];
  else
   *size = cmd->data_length;

  cmd->execute_cmd = target_scsi2_reservation_release;
  break;
 case 135:
 case 134:




  if (cdb[0] == 134)
   *size = (cdb[7] << 8) | cdb[8];
  else
   *size = cmd->data_length;

  cmd->execute_cmd = target_scsi2_reservation_reserve;
  break;
 case 136:
  *size = cdb[4];
  cmd->execute_cmd = spc_emulate_request_sense;
  break;
 case 153:
  *size = (cdb[3] << 8) + cdb[4];





  cmd->sam_task_attr = MSG_HEAD_TAG;
  cmd->execute_cmd = spc_emulate_inquiry;
  break;
 case 133:
 case 132:
  *size = (cdb[6] << 24) | (cdb[7] << 16) | (cdb[8] << 8) | cdb[9];
  break;
 case 154:
 case 142:
 case 141:
 case 129:
  *size = (cdb[10] << 24) | (cdb[11] << 16) |
         (cdb[12] << 8) | cdb[13];
  break;
 case 140:
 case 131:
  *size = (cdb[3] << 8) | cdb[4];
  break;
 case 128:
  *size = (cdb[6] << 16) + (cdb[7] << 8) + cdb[8];
  break;
 case 137:
  cmd->execute_cmd = spc_emulate_report_luns;
  *size = (cdb[6] << 24) | (cdb[7] << 16) | (cdb[8] << 8) | cdb[9];




  cmd->sam_task_attr = MSG_HEAD_TAG;
  break;
 case 130:
  cmd->execute_cmd = spc_emulate_testunitready;
  *size = 0;
  break;
 case 150:
  if (dev->transport->get_device_type(dev) != TYPE_ROM) {




   if ((cdb[1] & 0x1f) == MI_REPORT_TARGET_PGS) {
    cmd->execute_cmd =
     target_emulate_report_target_port_groups;
   }
   *size = get_unaligned_be32(&cdb[6]);
  } else {



   *size = get_unaligned_be16(&cdb[8]);
  }
  break;
 case 149:
  if (dev->transport->get_device_type(dev) != TYPE_ROM) {




   if (cdb[1] == MO_SET_TARGET_PGS) {
    cmd->execute_cmd =
     target_emulate_set_target_port_groups;
   }
   *size = get_unaligned_be32(&cdb[6]);
  } else {



   *size = get_unaligned_be16(&cdb[8]);
  }
  break;
 default:
  pr_warn("TARGET_CORE[%s]: Unsupported SCSI Opcode"
   " 0x%02x, sending CHECK_CONDITION.\n",
   cmd->se_tfo->get_fabric_name(), cdb[0]);
  return TCM_UNSUPPORTED_SCSI_OPCODE;
 }

 return 0;
}
