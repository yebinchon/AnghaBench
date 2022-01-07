
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int dummy; } ;


 int ida_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int net_generic_ids ;
 int net_mutex ;
 int unregister_pernet_operations (struct pernet_operations*) ;

void unregister_pernet_gen_subsys(int id, struct pernet_operations *ops)
{
 mutex_lock(&net_mutex);
 unregister_pernet_operations(ops);
 ida_remove(&net_generic_ids, id);
 mutex_unlock(&net_mutex);
}
