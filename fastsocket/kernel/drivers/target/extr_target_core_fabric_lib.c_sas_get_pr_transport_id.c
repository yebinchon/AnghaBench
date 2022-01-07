
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t10_pr_registration {int dummy; } ;
struct se_portal_group {int dummy; } ;
struct se_node_acl {unsigned char* initiatorname; } ;


 unsigned char transport_asciihex_to_binaryhex (unsigned char*) ;

u32 sas_get_pr_transport_id(
 struct se_portal_group *se_tpg,
 struct se_node_acl *se_nacl,
 struct t10_pr_registration *pr_reg,
 int *format_code,
 unsigned char *buf)
{
 unsigned char binary, *ptr;
 int i;
 u32 off = 4;




 buf[0] = 0x06;




 ptr = &se_nacl->initiatorname[4];

 for (i = 0; i < 16; i += 2) {
  binary = transport_asciihex_to_binaryhex(&ptr[i]);
  buf[off++] = binary;
 }




 return 24;
}
