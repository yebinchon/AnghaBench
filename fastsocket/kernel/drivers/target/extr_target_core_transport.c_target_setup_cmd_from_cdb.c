
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct se_device {TYPE_1__* transport; } ;
struct se_cmd {TYPE_4__* se_lun; int t_state_lock; int se_cmd_flags; int scsi_status; int * t_task_cdb; int * __t_task_cdb; struct se_device* se_dev; } ;
typedef scalar_t__ sense_reason_t ;
struct TYPE_8__ {int lun_sep_lock; TYPE_3__* lun_sep; } ;
struct TYPE_6__ {int cmd_pdus; } ;
struct TYPE_7__ {TYPE_2__ sep_stats; } ;
struct TYPE_5__ {scalar_t__ (* parse_cdb ) (struct se_cmd*) ;} ;


 int GFP_KERNEL ;
 int SAM_STAT_RESERVATION_CONFLICT ;
 int SCF_SUPPORTED_SAM_OPCODE ;
 unsigned long SCSI_MAX_VARLEN_CDB_SIZE ;
 scalar_t__ TCM_INVALID_CDB_FIELD ;
 scalar_t__ TCM_OUT_OF_RESOURCES ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,unsigned char*,int) ;
 int pr_err (char*,int,unsigned long) ;
 int scsi_command_size (unsigned char*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct se_cmd*) ;
 scalar_t__ target_alua_state_check (struct se_cmd*) ;
 scalar_t__ target_check_reservation (struct se_cmd*) ;
 scalar_t__ target_scsi3_ua_check (struct se_cmd*) ;
 scalar_t__ transport_check_alloc_task_attr (struct se_cmd*) ;

sense_reason_t
target_setup_cmd_from_cdb(struct se_cmd *cmd, unsigned char *cdb)
{
 struct se_device *dev = cmd->se_dev;
 unsigned long flags;
 sense_reason_t ret;





 if (scsi_command_size(cdb) > SCSI_MAX_VARLEN_CDB_SIZE) {
  pr_err("Received SCSI CDB with command_size: %d that"
   " exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\n",
   scsi_command_size(cdb), SCSI_MAX_VARLEN_CDB_SIZE);
  return TCM_INVALID_CDB_FIELD;
 }





 if (scsi_command_size(cdb) > sizeof(cmd->__t_task_cdb)) {
  cmd->t_task_cdb = kzalloc(scsi_command_size(cdb),
      GFP_KERNEL);
  if (!cmd->t_task_cdb) {
   pr_err("Unable to allocate cmd->t_task_cdb"
    " %u > sizeof(cmd->__t_task_cdb): %lu ops\n",
    scsi_command_size(cdb),
    (unsigned long)sizeof(cmd->__t_task_cdb));
   return TCM_OUT_OF_RESOURCES;
  }
 } else
  cmd->t_task_cdb = &cmd->__t_task_cdb[0];



 memcpy(cmd->t_task_cdb, cdb, scsi_command_size(cdb));




 ret = target_scsi3_ua_check(cmd);
 if (ret)
  return ret;

 ret = target_alua_state_check(cmd);
 if (ret)
  return ret;

 ret = target_check_reservation(cmd);
 if (ret) {
  cmd->scsi_status = SAM_STAT_RESERVATION_CONFLICT;
  return ret;
 }

 ret = dev->transport->parse_cdb(cmd);
 if (ret)
  return ret;

 ret = transport_check_alloc_task_attr(cmd);
 if (ret)
  return ret;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 cmd->se_cmd_flags |= SCF_SUPPORTED_SAM_OPCODE;
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 spin_lock(&cmd->se_lun->lun_sep_lock);
 if (cmd->se_lun->lun_sep)
  cmd->se_lun->lun_sep->sep_stats.cmd_pdus++;
 spin_unlock(&cmd->se_lun->lun_sep_lock);
 return 0;
}
