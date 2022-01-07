
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ehl_map_entry {int label; } ;
typedef int rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int * exception_handler_label_map; } ;


 int NO_INSERT ;
 TYPE_2__* cfun ;
 int gcc_assert (struct ehl_map_entry**) ;
 int htab_clear_slot (int *,void**) ;
 scalar_t__ htab_find_slot (int *,struct ehl_map_entry*,int ) ;

__attribute__((used)) static void
remove_exception_handler_label (rtx label)
{
  struct ehl_map_entry **slot, tmp;



  if (cfun->eh->exception_handler_label_map == ((void*)0))
    return;

  tmp.label = label;
  slot = (struct ehl_map_entry **)
    htab_find_slot (cfun->eh->exception_handler_label_map, &tmp, NO_INSERT);
  gcc_assert (slot);

  htab_clear_slot (cfun->eh->exception_handler_label_map, (void **) slot);
}
