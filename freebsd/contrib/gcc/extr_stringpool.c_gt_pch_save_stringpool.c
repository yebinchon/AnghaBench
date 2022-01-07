
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nslots; int entries; int nelements; } ;
struct TYPE_3__ {int nslots; void* entries; int nelements; } ;


 void* ggc_alloc (int) ;
 TYPE_2__* ident_hash ;
 int memcpy (void*,int ,int) ;
 TYPE_1__* spd ;

void
gt_pch_save_stringpool (void)
{
  spd = ggc_alloc (sizeof (*spd));
  spd->nslots = ident_hash->nslots;
  spd->nelements = ident_hash->nelements;
  spd->entries = ggc_alloc (sizeof (spd->entries[0]) * spd->nslots);
  memcpy (spd->entries, ident_hash->entries,
   spd->nslots * sizeof (spd->entries[0]));
}
