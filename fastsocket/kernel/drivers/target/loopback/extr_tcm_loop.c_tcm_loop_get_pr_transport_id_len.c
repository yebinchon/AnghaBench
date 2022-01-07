
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcm_loop_tpg {struct tcm_loop_hba* tl_hba; } ;
struct tcm_loop_hba {int tl_proto_id; } ;
struct t10_pr_registration {int dummy; } ;
struct se_portal_group {struct tcm_loop_tpg* se_tpg_fabric_ptr; } ;
struct se_node_acl {int dummy; } ;





 int fc_get_pr_transport_id_len (struct se_portal_group*,struct se_node_acl*,struct t10_pr_registration*,int*) ;
 int iscsi_get_pr_transport_id_len (struct se_portal_group*,struct se_node_acl*,struct t10_pr_registration*,int*) ;
 int pr_err (char*,int) ;
 int sas_get_pr_transport_id_len (struct se_portal_group*,struct se_node_acl*,struct t10_pr_registration*,int*) ;

__attribute__((used)) static u32 tcm_loop_get_pr_transport_id_len(
 struct se_portal_group *se_tpg,
 struct se_node_acl *se_nacl,
 struct t10_pr_registration *pr_reg,
 int *format_code)
{
 struct tcm_loop_tpg *tl_tpg = se_tpg->se_tpg_fabric_ptr;
 struct tcm_loop_hba *tl_hba = tl_tpg->tl_hba;

 switch (tl_hba->tl_proto_id) {
 case 128:
  return sas_get_pr_transport_id_len(se_tpg, se_nacl, pr_reg,
     format_code);
 case 130:
  return fc_get_pr_transport_id_len(se_tpg, se_nacl, pr_reg,
     format_code);
 case 129:
  return iscsi_get_pr_transport_id_len(se_tpg, se_nacl, pr_reg,
     format_code);
 default:
  pr_err("Unknown tl_proto_id: 0x%02x, using"
   " SAS emulation\n", tl_hba->tl_proto_id);
  break;
 }

 return sas_get_pr_transport_id_len(se_tpg, se_nacl, pr_reg,
   format_code);
}
