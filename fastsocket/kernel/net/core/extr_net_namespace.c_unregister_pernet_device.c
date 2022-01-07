
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;
struct pernet_operations {TYPE_1__ list; } ;


 TYPE_1__* first_device ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int net_mutex ;
 int unregister_pernet_operations (struct pernet_operations*) ;

void unregister_pernet_device(struct pernet_operations *ops)
{
 mutex_lock(&net_mutex);
 if (&ops->list == first_device)
  first_device = first_device->next;
 unregister_pernet_operations(ops);
 mutex_unlock(&net_mutex);
}
