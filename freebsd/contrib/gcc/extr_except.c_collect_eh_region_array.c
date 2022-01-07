
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eh_region {struct eh_region* next_peer; struct eh_region* outer; struct eh_region* inner; int region_number; } ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int region_array; scalar_t__ last_region_number; struct eh_region* region_tree; } ;


 int VEC_replace (int ,int ,int ,struct eh_region*) ;
 int VEC_safe_grow (int ,int ,int ,scalar_t__) ;
 TYPE_2__* cfun ;
 int eh_region ;
 int gc ;

void
collect_eh_region_array (void)
{
  struct eh_region *i;

  i = cfun->eh->region_tree;
  if (! i)
    return;

  VEC_safe_grow (eh_region, gc, cfun->eh->region_array,
   cfun->eh->last_region_number + 1);
  VEC_replace (eh_region, cfun->eh->region_array, 0, 0);

  while (1)
    {
      VEC_replace (eh_region, cfun->eh->region_array, i->region_number, i);


      if (i->inner)
 i = i->inner;

      else if (i->next_peer)
 i = i->next_peer;

      else
 {
   do {
     i = i->outer;
     if (i == ((void*)0))
       return;
   } while (i->next_peer == ((void*)0));
   i = i->next_peer;
 }
    }
}
