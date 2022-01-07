
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* attrs ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int attrs_pool ;
 int pool_free (int ,TYPE_1__*) ;

__attribute__((used)) static void
attrs_list_clear (attrs *listp)
{
  attrs list, next;

  for (list = *listp; list; list = next)
    {
      next = list->next;
      pool_free (attrs_pool, list);
    }
  *listp = ((void*)0);
}
