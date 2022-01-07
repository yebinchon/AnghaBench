
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcm_loop_tpg {struct tcm_loop_hba* tl_hba; } ;
struct tcm_loop_hba {int tl_proto_id; } ;
struct se_portal_group {struct tcm_loop_tpg* se_tpg_fabric_ptr; } ;





 char* fc_parse_pr_out_transport_id (struct se_portal_group*,char const*,int *,char**) ;
 char* iscsi_parse_pr_out_transport_id (struct se_portal_group*,char const*,int *,char**) ;
 int pr_err (char*,int) ;
 char* sas_parse_pr_out_transport_id (struct se_portal_group*,char const*,int *,char**) ;

__attribute__((used)) static char *tcm_loop_parse_pr_out_transport_id(
 struct se_portal_group *se_tpg,
 const char *buf,
 u32 *out_tid_len,
 char **port_nexus_ptr)
{
 struct tcm_loop_tpg *tl_tpg = se_tpg->se_tpg_fabric_ptr;
 struct tcm_loop_hba *tl_hba = tl_tpg->tl_hba;

 switch (tl_hba->tl_proto_id) {
 case 128:
  return sas_parse_pr_out_transport_id(se_tpg, buf, out_tid_len,
     port_nexus_ptr);
 case 130:
  return fc_parse_pr_out_transport_id(se_tpg, buf, out_tid_len,
     port_nexus_ptr);
 case 129:
  return iscsi_parse_pr_out_transport_id(se_tpg, buf, out_tid_len,
     port_nexus_ptr);
 default:
  pr_err("Unknown tl_proto_id: 0x%02x, using"
   " SAS emulation\n", tl_hba->tl_proto_id);
  break;
 }

 return sas_parse_pr_out_transport_id(se_tpg, buf, out_tid_len,
   port_nexus_ptr);
}
