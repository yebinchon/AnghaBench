
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_cmd {int dummy; } ;
typedef int sense_reason_t ;
 int TCM_INVALID_CDB_FIELD ;
 int core_scsi3_pro_preempt (struct se_cmd*,int,int,int ,int ,int) ;
 int pr_err (char*,char*,int) ;

__attribute__((used)) static sense_reason_t
core_scsi3_emulate_pro_preempt(struct se_cmd *cmd, int type, int scope,
  u64 res_key, u64 sa_res_key, int abort)
{
 switch (type) {
 case 130:
 case 133:
 case 128:
 case 131:
 case 129:
 case 132:
  return core_scsi3_pro_preempt(cmd, type, scope, res_key,
           sa_res_key, abort);
 default:
  pr_err("SPC-3 PR: Unknown Service Action PREEMPT%s"
   " Type: 0x%02x\n", (abort) ? "_AND_ABORT" : "", type);
  return TCM_INVALID_CDB_FIELD;
 }
}
