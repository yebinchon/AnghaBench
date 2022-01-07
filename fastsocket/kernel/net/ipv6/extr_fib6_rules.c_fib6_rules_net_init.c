
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* fib6_rules_ops; } ;
struct net {TYPE_1__ ipv6; } ;
struct TYPE_8__ {int rules_list; struct net* fro_net; } ;


 int ENOMEM ;
 int FIB_RULE_PERMANENT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RT6_TABLE_LOCAL ;
 int RT6_TABLE_MAIN ;
 int fib6_rules_ops_template ;
 int fib_default_rule_add (TYPE_2__*,int,int ,int ) ;
 int fib_rules_cleanup_ops (TYPE_2__*) ;
 int fib_rules_register (TYPE_2__*) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmemdup (int *,int,int ) ;

__attribute__((used)) static int fib6_rules_net_init(struct net *net)
{
 int err = -ENOMEM;

 net->ipv6.fib6_rules_ops = kmemdup(&fib6_rules_ops_template,
        sizeof(*net->ipv6.fib6_rules_ops),
        GFP_KERNEL);
 if (!net->ipv6.fib6_rules_ops)
  goto out;

 net->ipv6.fib6_rules_ops->fro_net = net;
 INIT_LIST_HEAD(&net->ipv6.fib6_rules_ops->rules_list);

 err = fib_default_rule_add(net->ipv6.fib6_rules_ops, 0,
       RT6_TABLE_LOCAL, FIB_RULE_PERMANENT);
 if (err)
  goto out_fib6_rules_ops;

 err = fib_default_rule_add(net->ipv6.fib6_rules_ops,
       0x7FFE, RT6_TABLE_MAIN, 0);
 if (err)
  goto out_fib6_default_rule_add;

 err = fib_rules_register(net->ipv6.fib6_rules_ops);
 if (err)
  goto out_fib6_default_rule_add;
out:
 return err;

out_fib6_default_rule_add:
 fib_rules_cleanup_ops(net->ipv6.fib6_rules_ops);
out_fib6_rules_ops:
 kfree(net->ipv6.fib6_rules_ops);
 goto out;
}
