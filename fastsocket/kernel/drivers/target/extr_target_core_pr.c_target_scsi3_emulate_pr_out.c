
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct se_cmd {unsigned char* t_task_cdb; int data_length; int se_sess; TYPE_1__* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_2__ {int dev_reservation_flags; } ;


 int DRF_SPC2_RESERVATIONS ;
 int GOOD ;
 int TCM_INVALID_CDB_FIELD ;
 int TCM_INVALID_PARAMETER_LIST ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int TCM_RESERVATION_CONFLICT ;
 int core_scsi3_emulate_pro_clear (struct se_cmd*,int ) ;
 int core_scsi3_emulate_pro_preempt (struct se_cmd*,int,int,int ,int ,int) ;
 int core_scsi3_emulate_pro_register (struct se_cmd*,int ,int ,int,int,int,int) ;
 int core_scsi3_emulate_pro_register_and_move (struct se_cmd*,int ,int ,int,int) ;
 int core_scsi3_emulate_pro_release (struct se_cmd*,int,int,int ) ;
 int core_scsi3_emulate_pro_reserve (struct se_cmd*,int,int,int ) ;
 int core_scsi3_extract_reservation_key (unsigned char*) ;
 int pr_err (char*,...) ;
 int pr_warn (char*,int) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 unsigned char* transport_kmap_data_sg (struct se_cmd*) ;
 int transport_kunmap_data_sg (struct se_cmd*) ;

sense_reason_t
target_scsi3_emulate_pr_out(struct se_cmd *cmd)
{
 unsigned char *cdb = &cmd->t_task_cdb[0];
 unsigned char *buf;
 u64 res_key, sa_res_key;
 int sa, scope, type, aptpl;
 int spec_i_pt = 0, all_tg_pt = 0, unreg = 0;
 sense_reason_t ret;
 if (cmd->se_dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS) {
  pr_err("Received PERSISTENT_RESERVE CDB while legacy"
   " SPC-2 reservation is held, returning"
   " RESERVATION_CONFLICT\n");
  return TCM_RESERVATION_CONFLICT;
 }





 if (!cmd->se_sess)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

 if (cmd->data_length < 24) {
  pr_warn("SPC-PR: Received PR OUT parameter list"
   " length too small: %u\n", cmd->data_length);
  return TCM_INVALID_PARAMETER_LIST;
 }




 sa = (cdb[1] & 0x1f);
 scope = (cdb[2] & 0xf0);
 type = (cdb[2] & 0x0f);

 buf = transport_kmap_data_sg(cmd);
 if (!buf)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;




 res_key = core_scsi3_extract_reservation_key(&buf[0]);
 sa_res_key = core_scsi3_extract_reservation_key(&buf[8]);




 if (sa != 130) {
  spec_i_pt = (buf[20] & 0x08);
  all_tg_pt = (buf[20] & 0x04);
  aptpl = (buf[20] & 0x01);
 } else {
  aptpl = (buf[17] & 0x01);
  unreg = (buf[17] & 0x02);
 }
 transport_kunmap_data_sg(cmd);
 buf = ((void*)0);




 if (spec_i_pt && ((cdb[1] & 0x1f) != 132))
  return TCM_INVALID_PARAMETER_LIST;
 if (!spec_i_pt && ((cdb[1] & 0x1f) != 130) &&
     (cmd->data_length != 24)) {
  pr_warn("SPC-PR: Received PR OUT illegal parameter"
   " list length: %u\n", cmd->data_length);
  return TCM_INVALID_PARAMETER_LIST;
 }






 switch (sa) {
 case 132:
  ret = core_scsi3_emulate_pro_register(cmd,
   res_key, sa_res_key, aptpl, all_tg_pt, spec_i_pt, 0);
  break;
 case 128:
  ret = core_scsi3_emulate_pro_reserve(cmd, type, scope, res_key);
  break;
 case 129:
  ret = core_scsi3_emulate_pro_release(cmd, type, scope, res_key);
  break;
 case 135:
  ret = core_scsi3_emulate_pro_clear(cmd, res_key);
  break;
 case 134:
  ret = core_scsi3_emulate_pro_preempt(cmd, type, scope,
     res_key, sa_res_key, 0);
  break;
 case 133:
  ret = core_scsi3_emulate_pro_preempt(cmd, type, scope,
     res_key, sa_res_key, 1);
  break;
 case 131:
  ret = core_scsi3_emulate_pro_register(cmd,
   0, sa_res_key, aptpl, all_tg_pt, spec_i_pt, 1);
  break;
 case 130:
  ret = core_scsi3_emulate_pro_register_and_move(cmd, res_key,
    sa_res_key, aptpl, unreg);
  break;
 default:
  pr_err("Unknown PERSISTENT_RESERVE_OUT service"
   " action: 0x%02x\n", cdb[1] & 0x1f);
  return TCM_INVALID_CDB_FIELD;
 }

 if (!ret)
  target_complete_cmd(cmd, GOOD);
 return ret;
}
