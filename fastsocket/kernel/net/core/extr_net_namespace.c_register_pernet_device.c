
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int list; } ;


 int * first_device ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int net_mutex ;
 int pernet_list ;
 int register_pernet_operations (int *,struct pernet_operations*) ;

int register_pernet_device(struct pernet_operations *ops)
{
 int error;
 mutex_lock(&net_mutex);
 error = register_pernet_operations(&pernet_list, ops);
 if (!error && (first_device == &pernet_list))
  first_device = &ops->list;
 mutex_unlock(&net_mutex);
 return error;
}
