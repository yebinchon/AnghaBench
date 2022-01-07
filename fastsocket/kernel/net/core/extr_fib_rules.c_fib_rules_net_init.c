
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int rules_mod_lock; int rules_ops; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int fib_rules_net_init(struct net *net)
{
 INIT_LIST_HEAD(&net->rules_ops);
 spin_lock_init(&net->rules_mod_lock);
 return 0;
}
