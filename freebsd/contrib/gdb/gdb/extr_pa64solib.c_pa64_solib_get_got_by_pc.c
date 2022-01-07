
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ text_base; scalar_t__ text_size; scalar_t__ linkage_ptr; } ;
struct so_list {struct so_list* next; TYPE_1__ pa64_solib_desc; } ;
typedef scalar_t__ CORE_ADDR ;


 struct so_list* so_list_head ;

CORE_ADDR
pa64_solib_get_got_by_pc (CORE_ADDR addr)
{
  struct so_list *so_list = so_list_head;
  CORE_ADDR got_value = 0;

  while (so_list)
    {
      if (so_list->pa64_solib_desc.text_base <= addr
   && ((so_list->pa64_solib_desc.text_base
        + so_list->pa64_solib_desc.text_size)
       > addr))
 {
   got_value = so_list->pa64_solib_desc.linkage_ptr;
   break;
 }
      so_list = so_list->next;
    }
  return got_value;
}
