
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int dummy; } ;


 int first_device ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int net_mutex ;
 int register_pernet_operations (int ,struct pernet_operations*) ;

int register_pernet_subsys(struct pernet_operations *ops)
{
 int error;
 mutex_lock(&net_mutex);
 error = register_pernet_operations(first_device, ops);
 mutex_unlock(&net_mutex);
 return error;
}
