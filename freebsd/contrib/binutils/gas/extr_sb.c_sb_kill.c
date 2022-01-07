
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t pot; TYPE_1__* item; } ;
typedef TYPE_2__ sb ;
struct TYPE_7__ {TYPE_1__** size; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 TYPE_4__ free_list ;

void
sb_kill (sb *ptr)
{

  ptr->item->next = free_list.size[ptr->pot];
  free_list.size[ptr->pot] = ptr->item;
}
