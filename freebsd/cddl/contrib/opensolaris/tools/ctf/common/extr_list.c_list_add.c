
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* l_next; void* l_data; } ;
typedef TYPE_1__ list_t ;


 TYPE_1__* xmalloc (int) ;

void
list_add(list_t **list, void *data)
{
 list_t *le;

 le = xmalloc(sizeof (list_t));
 le->l_data = data;
 le->l_next = *list;
 *list = le;
}
