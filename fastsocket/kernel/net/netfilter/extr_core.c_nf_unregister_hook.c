
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int list; } ;


 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_hook_mutex ;
 int synchronize_net () ;

void nf_unregister_hook(struct nf_hook_ops *reg)
{
 mutex_lock(&nf_hook_mutex);
 list_del_rcu(&reg->list);
 mutex_unlock(&nf_hook_mutex);

 synchronize_net();
}
