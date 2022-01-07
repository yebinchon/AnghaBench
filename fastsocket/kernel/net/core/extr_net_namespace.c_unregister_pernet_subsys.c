
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int net_mutex ;
 int unregister_pernet_operations (struct pernet_operations*) ;

void unregister_pernet_subsys(struct pernet_operations *module)
{
 mutex_lock(&net_mutex);
 unregister_pernet_operations(module);
 mutex_unlock(&net_mutex);
}
