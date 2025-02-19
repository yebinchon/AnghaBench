
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct netlbl_domaddr_map* addrsel; struct cipso_v4_doi* cipsov4; } ;
struct TYPE_4__ {int addr; int mask; int valid; } ;
struct netlbl_domaddr_map {struct netlbl_domaddr_map* domain; void* type; TYPE_1__ type_def; int list4; TYPE_2__ list; int list6; } ;
struct netlbl_domaddr4_map {struct netlbl_domaddr4_map* domain; void* type; TYPE_1__ type_def; int list4; TYPE_2__ list; int list6; } ;
struct netlbl_dom_map {struct netlbl_dom_map* domain; void* type; TYPE_1__ type_def; int list4; TYPE_2__ list; int list6; } ;
struct netlbl_audit {int dummy; } ;
struct in_addr {int s_addr; } ;
struct cipso_v4_doi {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 void* NETLBL_NLTYPE_ADDRSELECT ;
 void* NETLBL_NLTYPE_CIPSOV4 ;
 struct cipso_v4_doi* cipso_v4_doi_getdef (int ) ;
 int cipso_v4_doi_putdef (struct cipso_v4_doi*) ;
 int kfree (struct netlbl_domaddr_map*) ;
 struct netlbl_domaddr_map* kstrdup (char const*,int ) ;
 struct netlbl_domaddr_map* kzalloc (int,int ) ;
 int netlbl_af4list_add (TYPE_2__*,int *) ;
 int netlbl_domhsh_add (struct netlbl_domaddr_map*,struct netlbl_audit*) ;

int netlbl_cfg_cipsov4_map_add(u32 doi,
          const char *domain,
          const struct in_addr *addr,
          const struct in_addr *mask,
          struct netlbl_audit *audit_info)
{
 int ret_val = -ENOMEM;
 struct cipso_v4_doi *doi_def;
 struct netlbl_dom_map *entry;
 struct netlbl_domaddr_map *addrmap = ((void*)0);
 struct netlbl_domaddr4_map *addrinfo = ((void*)0);

 doi_def = cipso_v4_doi_getdef(doi);
 if (doi_def == ((void*)0))
  return -ENOENT;

 entry = kzalloc(sizeof(*entry), GFP_ATOMIC);
 if (entry == ((void*)0))
  return -ENOMEM;
 if (domain != ((void*)0)) {
  entry->domain = kstrdup(domain, GFP_ATOMIC);
  if (entry->domain == ((void*)0))
   goto cfg_cipsov4_map_add_failure;
 }

 if (addr == ((void*)0) && mask == ((void*)0)) {
  entry->type_def.cipsov4 = doi_def;
  entry->type = NETLBL_NLTYPE_CIPSOV4;
 } else if (addr != ((void*)0) && mask != ((void*)0)) {
  addrmap = kzalloc(sizeof(*addrmap), GFP_ATOMIC);
  if (addrmap == ((void*)0))
   goto cfg_cipsov4_map_add_failure;
  INIT_LIST_HEAD(&addrmap->list4);
  INIT_LIST_HEAD(&addrmap->list6);

  addrinfo = kzalloc(sizeof(*addrinfo), GFP_ATOMIC);
  if (addrinfo == ((void*)0))
   goto cfg_cipsov4_map_add_failure;
  addrinfo->type_def.cipsov4 = doi_def;
  addrinfo->type = NETLBL_NLTYPE_CIPSOV4;
  addrinfo->list.addr = addr->s_addr & mask->s_addr;
  addrinfo->list.mask = mask->s_addr;
  addrinfo->list.valid = 1;
  ret_val = netlbl_af4list_add(&addrinfo->list, &addrmap->list4);
  if (ret_val != 0)
   goto cfg_cipsov4_map_add_failure;

  entry->type_def.addrsel = addrmap;
  entry->type = NETLBL_NLTYPE_ADDRSELECT;
 } else {
  ret_val = -EINVAL;
  goto cfg_cipsov4_map_add_failure;
 }

 ret_val = netlbl_domhsh_add(entry, audit_info);
 if (ret_val != 0)
  goto cfg_cipsov4_map_add_failure;

 return 0;

cfg_cipsov4_map_add_failure:
 cipso_v4_doi_putdef(doi_def);
 kfree(entry->domain);
 kfree(entry);
 kfree(addrmap);
 kfree(addrinfo);
 return ret_val;
}
