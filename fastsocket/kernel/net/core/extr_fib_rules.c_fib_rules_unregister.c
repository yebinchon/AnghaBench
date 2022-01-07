
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int rules_mod_lock; } ;
struct fib_rules_ops {int list; struct net* fro_net; } ;


 int fib_rules_cleanup_ops (struct fib_rules_ops*) ;
 int list_del_rcu (int *) ;
 int release_net (struct net*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

void fib_rules_unregister(struct fib_rules_ops *ops)
{
 struct net *net = ops->fro_net;

 spin_lock(&net->rules_mod_lock);
 list_del_rcu(&ops->list);
 fib_rules_cleanup_ops(ops);
 spin_unlock(&net->rules_mod_lock);

 synchronize_rcu();
 release_net(net);
}
