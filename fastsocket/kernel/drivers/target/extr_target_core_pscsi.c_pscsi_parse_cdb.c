
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {unsigned char* t_task_cdb; int se_cmd_flags; int execute_cmd; } ;
typedef int sense_reason_t ;







 int SCF_BIDI ;
 int SCF_SCSI_DATA_CDB ;
 int TCM_UNSUPPORTED_SCSI_OPCODE ;





 int pscsi_clear_cdb_lun (unsigned char*) ;
 int pscsi_execute_cmd ;
 int spc_emulate_report_luns ;

__attribute__((used)) static sense_reason_t
pscsi_parse_cdb(struct se_cmd *cmd)
{
 unsigned char *cdb = cmd->t_task_cdb;

 if (cmd->se_cmd_flags & SCF_BIDI)
  return TCM_UNSUPPORTED_SCSI_OPCODE;

 pscsi_clear_cdb_lun(cdb);






 switch (cdb[0]) {
 case 133:
  cmd->execute_cmd = spc_emulate_report_luns;
  return 0;
 case 134:
 case 137:
 case 136:
 case 135:
 case 129:
 case 132:
 case 131:
 case 130:
 case 128:
  cmd->se_cmd_flags |= SCF_SCSI_DATA_CDB;

 default:
  cmd->execute_cmd = pscsi_execute_cmd;
  return 0;
 }
}
