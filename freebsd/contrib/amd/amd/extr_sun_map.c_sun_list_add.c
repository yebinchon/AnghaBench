
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sun_list {TYPE_1__* last; TYPE_1__* first; } ;
struct TYPE_3__ {struct TYPE_3__* q_forw; struct TYPE_3__* q_back; } ;
typedef TYPE_1__ qelem ;



void
sun_list_add(struct sun_list *list, qelem *item)
{
  if (list->last == ((void*)0)) {
    list->last = item;
    list->first = item;
    item->q_back = ((void*)0);
  }
  else {
    list->last->q_forw = item;
    item->q_back = list->last;
    list->last = item;
  }

  item->q_forw = ((void*)0);
}
