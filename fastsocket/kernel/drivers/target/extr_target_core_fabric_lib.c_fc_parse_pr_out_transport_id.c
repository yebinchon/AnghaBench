
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_portal_group {int dummy; } ;



char *fc_parse_pr_out_transport_id(
 struct se_portal_group *se_tpg,
 const char *buf,
 u32 *out_tid_len,
 char **port_nexus_ptr)
{





 *port_nexus_ptr = ((void*)0);
 *out_tid_len = 24;

  return (char *)&buf[8];
}
