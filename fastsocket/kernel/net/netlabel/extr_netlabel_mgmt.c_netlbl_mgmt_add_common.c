
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {struct netlbl_domaddr_map* addrsel; struct cipso_v4_doi* cipsov4; } ;
struct TYPE_5__ {int addr; int mask; int valid; } ;
struct netlbl_domaddr_map {int type; struct netlbl_domaddr_map* domain; TYPE_1__ type_def; int list6; TYPE_2__ list; int list4; } ;
struct netlbl_domaddr6_map {int type; struct netlbl_domaddr6_map* domain; TYPE_1__ type_def; int list6; TYPE_2__ list; int list4; } ;
struct netlbl_domaddr4_map {int type; struct netlbl_domaddr4_map* domain; TYPE_1__ type_def; int list6; TYPE_2__ list; int list4; } ;
struct netlbl_dom_map {int type; struct netlbl_dom_map* domain; TYPE_1__ type_def; int list6; TYPE_2__ list; int list4; } ;
struct netlbl_audit {int dummy; } ;
struct in_addr {int s_addr; } ;
struct in6_addr {int * s6_addr32; } ;
struct genl_info {scalar_t__* attrs; } ;
struct cipso_v4_doi {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* NETLBL_NLTYPE_ADDRSELECT ;


 size_t NLBL_MGMT_A_CV4DOI ;
 size_t NLBL_MGMT_A_DOMAIN ;
 size_t NLBL_MGMT_A_IPV4ADDR ;
 size_t NLBL_MGMT_A_IPV4MASK ;
 size_t NLBL_MGMT_A_IPV6ADDR ;
 size_t NLBL_MGMT_A_IPV6MASK ;
 size_t NLBL_MGMT_A_PROTOCOL ;
 struct cipso_v4_doi* cipso_v4_doi_getdef (void*) ;
 int cipso_v4_doi_putdef (struct cipso_v4_doi*) ;
 int ipv6_addr_copy (int*,struct in6_addr*) ;
 int kfree (struct netlbl_domaddr_map*) ;
 struct netlbl_domaddr_map* kmalloc (size_t,int ) ;
 struct netlbl_domaddr_map* kzalloc (int,int ) ;
 int netlbl_af4list_add (TYPE_2__*,int *) ;
 int netlbl_af6list_add (TYPE_2__*,int *) ;
 int netlbl_domhsh_add (struct netlbl_domaddr_map*,struct netlbl_audit*) ;
 void* nla_data (scalar_t__) ;
 void* nla_get_u32 (scalar_t__) ;
 int nla_len (scalar_t__) ;
 int nla_strlcpy (struct netlbl_domaddr_map*,scalar_t__,size_t) ;

__attribute__((used)) static int netlbl_mgmt_add_common(struct genl_info *info,
      struct netlbl_audit *audit_info)
{
 int ret_val = -EINVAL;
 struct netlbl_dom_map *entry = ((void*)0);
 struct netlbl_domaddr_map *addrmap = ((void*)0);
 struct cipso_v4_doi *cipsov4 = ((void*)0);
 u32 tmp_val;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (entry == ((void*)0)) {
  ret_val = -ENOMEM;
  goto add_failure;
 }
 entry->type = nla_get_u32(info->attrs[NLBL_MGMT_A_PROTOCOL]);
 if (info->attrs[NLBL_MGMT_A_DOMAIN]) {
  size_t tmp_size = nla_len(info->attrs[NLBL_MGMT_A_DOMAIN]);
  entry->domain = kmalloc(tmp_size, GFP_KERNEL);
  if (entry->domain == ((void*)0)) {
   ret_val = -ENOMEM;
   goto add_failure;
  }
  nla_strlcpy(entry->domain,
       info->attrs[NLBL_MGMT_A_DOMAIN], tmp_size);
 }






 switch (entry->type) {
 case 128:
  break;
 case 129:
  if (!info->attrs[NLBL_MGMT_A_CV4DOI])
   goto add_failure;

  tmp_val = nla_get_u32(info->attrs[NLBL_MGMT_A_CV4DOI]);
  cipsov4 = cipso_v4_doi_getdef(tmp_val);
  if (cipsov4 == ((void*)0))
   goto add_failure;
  entry->type_def.cipsov4 = cipsov4;
  break;
 default:
  goto add_failure;
 }

 if (info->attrs[NLBL_MGMT_A_IPV4ADDR]) {
  struct in_addr *addr;
  struct in_addr *mask;
  struct netlbl_domaddr4_map *map;

  addrmap = kzalloc(sizeof(*addrmap), GFP_KERNEL);
  if (addrmap == ((void*)0)) {
   ret_val = -ENOMEM;
   goto add_failure;
  }
  INIT_LIST_HEAD(&addrmap->list4);
  INIT_LIST_HEAD(&addrmap->list6);

  if (nla_len(info->attrs[NLBL_MGMT_A_IPV4ADDR]) !=
      sizeof(struct in_addr)) {
   ret_val = -EINVAL;
   goto add_failure;
  }
  if (nla_len(info->attrs[NLBL_MGMT_A_IPV4MASK]) !=
      sizeof(struct in_addr)) {
   ret_val = -EINVAL;
   goto add_failure;
  }
  addr = nla_data(info->attrs[NLBL_MGMT_A_IPV4ADDR]);
  mask = nla_data(info->attrs[NLBL_MGMT_A_IPV4MASK]);

  map = kzalloc(sizeof(*map), GFP_KERNEL);
  if (map == ((void*)0)) {
   ret_val = -ENOMEM;
   goto add_failure;
  }
  map->list.addr = addr->s_addr & mask->s_addr;
  map->list.mask = mask->s_addr;
  map->list.valid = 1;
  map->type = entry->type;
  if (cipsov4)
   map->type_def.cipsov4 = cipsov4;

  ret_val = netlbl_af4list_add(&map->list, &addrmap->list4);
  if (ret_val != 0) {
   kfree(map);
   goto add_failure;
  }

  entry->type = NETLBL_NLTYPE_ADDRSELECT;
  entry->type_def.addrsel = addrmap;
 }

 ret_val = netlbl_domhsh_add(entry, audit_info);
 if (ret_val != 0)
  goto add_failure;

 return 0;

add_failure:
 if (cipsov4)
  cipso_v4_doi_putdef(cipsov4);
 if (entry)
  kfree(entry->domain);
 kfree(addrmap);
 kfree(entry);
 return ret_val;
}
