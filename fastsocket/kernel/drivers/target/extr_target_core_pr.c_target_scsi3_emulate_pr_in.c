
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int* t_task_cdb; TYPE_1__* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_2__ {int dev_reservation_flags; } ;


 int DRF_SPC2_RESERVATIONS ;
 int GOOD ;




 int TCM_INVALID_CDB_FIELD ;
 int TCM_RESERVATION_CONFLICT ;
 int core_scsi3_pri_read_full_status (struct se_cmd*) ;
 int core_scsi3_pri_read_keys (struct se_cmd*) ;
 int core_scsi3_pri_read_reservation (struct se_cmd*) ;
 int core_scsi3_pri_report_capabilities (struct se_cmd*) ;
 int pr_err (char*,...) ;
 int target_complete_cmd (struct se_cmd*,int ) ;

sense_reason_t
target_scsi3_emulate_pr_in(struct se_cmd *cmd)
{
 sense_reason_t ret;
 if (cmd->se_dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS) {
  pr_err("Received PERSISTENT_RESERVE CDB while legacy"
   " SPC-2 reservation is held, returning"
   " RESERVATION_CONFLICT\n");
  return TCM_RESERVATION_CONFLICT;
 }

 switch (cmd->t_task_cdb[1] & 0x1f) {
 case 130:
  ret = core_scsi3_pri_read_keys(cmd);
  break;
 case 129:
  ret = core_scsi3_pri_read_reservation(cmd);
  break;
 case 128:
  ret = core_scsi3_pri_report_capabilities(cmd);
  break;
 case 131:
  ret = core_scsi3_pri_read_full_status(cmd);
  break;
 default:
  pr_err("Unknown PERSISTENT_RESERVE_IN service"
   " action: 0x%02x\n", cmd->t_task_cdb[1] & 0x1f);
  return TCM_INVALID_CDB_FIELD;
 }

 if (!ret)
  target_complete_cmd(cmd, GOOD);
 return ret;
}
