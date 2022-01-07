
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* l_data; struct TYPE_3__* l_next; } ;
typedef TYPE_1__ list_t ;



int
list_iter(list_t *list, int (*func)(void *, void *), void *private)
{
 list_t *lnext;
 int cumrc = 0;
 int cbrc;

 while (list) {
  lnext = list->l_next;
  if ((cbrc = func(list->l_data, private)) < 0)
   return (cbrc);
  cumrc += cbrc;
  list = lnext;
 }

 return (cumrc);
}
