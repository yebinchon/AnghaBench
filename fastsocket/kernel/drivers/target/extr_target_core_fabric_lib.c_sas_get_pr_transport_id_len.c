
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t10_pr_registration {int dummy; } ;
struct se_portal_group {int dummy; } ;
struct se_node_acl {int dummy; } ;



u32 sas_get_pr_transport_id_len(
 struct se_portal_group *se_tpg,
 struct se_node_acl *se_nacl,
 struct t10_pr_registration *pr_reg,
 int *format_code)
{
 *format_code = 0;






 return 24;
}
