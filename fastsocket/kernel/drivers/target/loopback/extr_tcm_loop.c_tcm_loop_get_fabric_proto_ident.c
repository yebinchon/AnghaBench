
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcm_loop_tpg {struct tcm_loop_hba* tl_hba; } ;
struct tcm_loop_hba {int tl_proto_id; } ;
struct se_portal_group {struct tcm_loop_tpg* se_tpg_fabric_ptr; } ;





 int fc_get_fabric_proto_ident (struct se_portal_group*) ;
 int iscsi_get_fabric_proto_ident (struct se_portal_group*) ;
 int pr_err (char*,int) ;
 int sas_get_fabric_proto_ident (struct se_portal_group*) ;

__attribute__((used)) static u8 tcm_loop_get_fabric_proto_ident(struct se_portal_group *se_tpg)
{
 struct tcm_loop_tpg *tl_tpg = se_tpg->se_tpg_fabric_ptr;
 struct tcm_loop_hba *tl_hba = tl_tpg->tl_hba;







 switch (tl_hba->tl_proto_id) {
 case 128:
  return sas_get_fabric_proto_ident(se_tpg);
 case 130:
  return fc_get_fabric_proto_ident(se_tpg);
 case 129:
  return iscsi_get_fabric_proto_ident(se_tpg);
 default:
  pr_err("Unknown tl_proto_id: 0x%02x, using"
   " SAS emulation\n", tl_hba->tl_proto_id);
  break;
 }

 return sas_get_fabric_proto_ident(se_tpg);
}
