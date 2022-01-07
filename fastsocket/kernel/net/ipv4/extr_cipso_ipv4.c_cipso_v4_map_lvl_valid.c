
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_6__ {TYPE_2__* std; } ;
struct cipso_v4_doi {int type; TYPE_3__ map; } ;
struct TYPE_4__ {int * cipso; } ;
struct TYPE_5__ {TYPE_1__ lvl; } ;


 int CIPSO_V4_INV_LVL ;


 int EFAULT ;

__attribute__((used)) static int cipso_v4_map_lvl_valid(const struct cipso_v4_doi *doi_def, u8 level)
{
 switch (doi_def->type) {
 case 129:
  return 0;
 case 128:
  if (doi_def->map.std->lvl.cipso[level] < CIPSO_V4_INV_LVL)
   return 0;
  break;
 }

 return -EFAULT;
}
