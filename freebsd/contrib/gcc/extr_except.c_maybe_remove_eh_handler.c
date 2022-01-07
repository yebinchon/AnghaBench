
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ehl_map_entry {struct eh_region* region; int label; } ;
struct eh_region {scalar_t__ type; int label; } ;
typedef int rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int exception_handler_label_map; scalar_t__ built_landing_pads; } ;


 scalar_t__ ERT_MUST_NOT_THROW ;
 int NO_INSERT ;
 int NULL_RTX ;
 TYPE_2__* cfun ;
 int htab_clear_slot (int ,void**) ;
 scalar_t__ htab_find_slot (int ,struct ehl_map_entry*,int ) ;
 int remove_eh_handler (struct eh_region*) ;

void
maybe_remove_eh_handler (rtx label)
{
  struct ehl_map_entry **slot, tmp;
  struct eh_region *region;





  if (cfun->eh->built_landing_pads)
    return;

  tmp.label = label;
  slot = (struct ehl_map_entry **)
    htab_find_slot (cfun->eh->exception_handler_label_map, &tmp, NO_INSERT);
  if (! slot)
    return;
  region = (*slot)->region;
  if (! region)
    return;





  if (region->type == ERT_MUST_NOT_THROW)
    {
      htab_clear_slot (cfun->eh->exception_handler_label_map, (void **) slot);
      region->label = NULL_RTX;
    }
  else
    remove_eh_handler (region);
}
