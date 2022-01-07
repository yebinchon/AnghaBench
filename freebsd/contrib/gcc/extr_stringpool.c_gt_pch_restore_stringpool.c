
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nelements; int nslots; int entries; } ;


 int ht_load (int ,int ,int ,int ,int) ;
 int ident_hash ;
 TYPE_1__* spd ;

void
gt_pch_restore_stringpool (void)
{
  ht_load (ident_hash, spd->entries, spd->nslots, spd->nelements, 0);
  spd = ((void*)0);
}
