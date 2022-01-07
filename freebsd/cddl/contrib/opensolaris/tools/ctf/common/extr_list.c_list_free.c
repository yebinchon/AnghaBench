
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* l_data; struct TYPE_4__* l_next; } ;
typedef TYPE_1__ list_t ;


 int free (TYPE_1__*) ;

void
list_free(list_t *list, void (*datafree)(void *, void *), void *private)
{
 list_t *le;

 while (list) {
  le = list;
  list = list->l_next;
  if (le->l_data && datafree)
   datafree(le->l_data, private);
  free(le);
 }
}
