
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* l_next; } ;
typedef TYPE_1__ list_t ;



void
list_concat(list_t **list1, list_t *list2)
{
 list_t *l, *last;

 for (l = *list1, last = ((void*)0); l; last = l, l = l->l_next)
  continue;

 if (last == ((void*)0))
  *list1 = list2;
 else
  last->l_next = list2;
}
