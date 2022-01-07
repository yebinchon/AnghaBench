
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* l_data; struct TYPE_3__* l_next; } ;
typedef TYPE_1__ list_t ;



void *
list_find(list_t *list, void *tmpl, int (*cmp)(void *, void *))
{
 for (; list; list = list->l_next) {
  if (cmp(list->l_data, tmpl) == 0)
   return (list->l_data);
 }

 return (((void*)0));
}
