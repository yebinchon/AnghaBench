
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* l_data; struct TYPE_4__* l_next; } ;
typedef TYPE_1__ list_t ;



void
slist_merge(list_t **list1p, list_t *list2, int (*cmp)(void *, void *))
{
 list_t *list1, *next2;
 list_t *last1 = ((void*)0);

 if (*list1p == ((void*)0)) {
  *list1p = list2;
  return;
 }

 list1 = *list1p;
 while (list2 != ((void*)0)) {
  if (cmp(list1->l_data, list2->l_data) > 0) {
   next2 = list2->l_next;

   if (last1 == ((void*)0)) {

    *list1p = last1 = list2;
    list2->l_next = list1;
   } else {
    list2->l_next = list1;
    last1->l_next = list2;
    last1 = list2;
   }

   list2 = next2;
  } else {

   last1 = list1;
   list1 = list1->l_next;

   if (list1 == ((void*)0)) {

    last1->l_next = list2;
    list2 = ((void*)0);
   }
  }
 }
}
