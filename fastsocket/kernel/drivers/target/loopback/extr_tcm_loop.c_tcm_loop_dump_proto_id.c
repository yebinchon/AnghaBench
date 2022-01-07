
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm_loop_hba {int tl_proto_id; } ;






__attribute__((used)) static char *tcm_loop_dump_proto_id(struct tcm_loop_hba *tl_hba)
{
 switch (tl_hba->tl_proto_id) {
 case 128:
  return "SAS";
 case 130:
  return "FCP";
 case 129:
  return "iSCSI";
 default:
  break;
 }

 return "Unknown";
}
