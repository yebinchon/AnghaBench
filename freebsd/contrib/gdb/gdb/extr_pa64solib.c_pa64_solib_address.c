
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int text_base; int text_size; } ;
struct so_list {char* name; struct so_list* next; TYPE_1__ pa64_solib_desc; } ;
typedef int CORE_ADDR ;


 struct so_list* so_list_head ;

char *
pa64_solib_address (CORE_ADDR addr)
{
  struct so_list *so = so_list_head;

  while (so)
    {


      if (addr >= so->pa64_solib_desc.text_base
   && addr < (so->pa64_solib_desc.text_base
       | so->pa64_solib_desc.text_size))
 return so->name;


      so = so->next;
    }


  return ((void*)0);
}
