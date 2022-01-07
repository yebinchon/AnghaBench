
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {size_t cipso_size; size_t* cipso; } ;
struct cipso_v4_std_map_tbl {TYPE_2__ lvl; } ;
struct TYPE_3__ {struct cipso_v4_std_map_tbl* std; } ;
struct cipso_v4_doi {int type; TYPE_1__ map; } ;


 size_t CIPSO_V4_INV_LVL ;


 int EINVAL ;
 int EPERM ;

__attribute__((used)) static int cipso_v4_map_lvl_ntoh(const struct cipso_v4_doi *doi_def,
     u32 net_lvl,
     u32 *host_lvl)
{
 struct cipso_v4_std_map_tbl *map_tbl;

 switch (doi_def->type) {
 case 129:
  *host_lvl = net_lvl;
  return 0;
 case 128:
  map_tbl = doi_def->map.std;
  if (net_lvl < map_tbl->lvl.cipso_size &&
      map_tbl->lvl.cipso[net_lvl] < CIPSO_V4_INV_LVL) {
   *host_lvl = doi_def->map.std->lvl.cipso[net_lvl];
   return 0;
  }
  return -EPERM;
 }

 return -EINVAL;
}
