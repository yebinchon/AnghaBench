
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* l_data; struct TYPE_4__* l_next; } ;
typedef TYPE_1__ list_t ;


 int free (TYPE_1__*) ;
 int list_defcmp (void*,void*,void*) ;

void *
list_remove(list_t **list, void *data, int (*cmp)(void *, void *, void *),
    void *private)
{
 list_t *le, **le2;
 void *led;

 if (!cmp)
  cmp = list_defcmp;

 for (le = *list, le2 = list; le; le2 = &le->l_next, le = le->l_next) {
  if (cmp(le->l_data, data, private) == 0) {
   *le2 = le->l_next;
   led = le->l_data;
   free(le);
   return (led);
  }
 }

 return (((void*)0));
}
