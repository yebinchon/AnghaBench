
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct netlbl_domaddr6_map {int type; } ;
struct TYPE_3__ {struct cipso_v4_doi* cipsov4; } ;
struct netlbl_domaddr4_map {int type; TYPE_1__ type_def; } ;
struct TYPE_4__ {struct cipso_v4_doi* cipsov4; } ;
struct netlbl_dom_map {char* domain; int type; TYPE_2__ type_def; } ;
struct netlbl_audit {int dummy; } ;
struct netlbl_af6list {int mask; int addr; } ;
struct netlbl_af4list {int mask; int addr; } ;
struct cipso_v4_doi {int doi; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_MAC_MAP_ADD ;
 int BUG_ON (int ) ;


 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int netlbl_af4list_audit_addr (struct audit_buffer*,int ,int *,int ,int ) ;
 int netlbl_af6list_audit_addr (struct audit_buffer*,int ,int *,int *,int *) ;
 struct audit_buffer* netlbl_audit_start_common (int ,struct netlbl_audit*) ;
 struct netlbl_domaddr4_map* netlbl_domhsh_addr4_entry (struct netlbl_af4list*) ;
 struct netlbl_domaddr6_map* netlbl_domhsh_addr6_entry (struct netlbl_af6list*) ;

__attribute__((used)) static void netlbl_domhsh_audit_add(struct netlbl_dom_map *entry,
        struct netlbl_af4list *addr4,
        struct netlbl_af6list *addr6,
        int result,
        struct netlbl_audit *audit_info)
{
 struct audit_buffer *audit_buf;
 struct cipso_v4_doi *cipsov4 = ((void*)0);
 u32 type;

 audit_buf = netlbl_audit_start_common(AUDIT_MAC_MAP_ADD, audit_info);
 if (audit_buf != ((void*)0)) {
  audit_log_format(audit_buf, " nlbl_domain=%s",
     entry->domain ? entry->domain : "(default)");
  if (addr4 != ((void*)0)) {
   struct netlbl_domaddr4_map *map4;
   map4 = netlbl_domhsh_addr4_entry(addr4);
   type = map4->type;
   cipsov4 = map4->type_def.cipsov4;
   netlbl_af4list_audit_addr(audit_buf, 0, ((void*)0),
        addr4->addr, addr4->mask);
  } else {
   type = entry->type;
   cipsov4 = entry->type_def.cipsov4;
  }
  switch (type) {
  case 128:
   audit_log_format(audit_buf, " nlbl_protocol=unlbl");
   break;
  case 129:
   BUG_ON(cipsov4 == ((void*)0));
   audit_log_format(audit_buf,
      " nlbl_protocol=cipsov4 cipso_doi=%u",
      cipsov4->doi);
   break;
  }
  audit_log_format(audit_buf, " res=%u", result == 0 ? 1 : 0);
  audit_log_end(audit_buf);
 }
}
