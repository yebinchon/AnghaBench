
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* l_data; struct TYPE_4__* l_next; } ;
typedef TYPE_1__ list_t ;


 int list_add (TYPE_1__**,void*) ;

void
slist_add(list_t **list, void *data, int (*cmp)(void *, void *))
{
 list_t **nextp;

 for (nextp = list; *nextp; nextp = &((*nextp)->l_next)) {
  if (cmp((*nextp)->l_data, data) > 0)
   break;
 }

 list_add(nextp, data);
}
