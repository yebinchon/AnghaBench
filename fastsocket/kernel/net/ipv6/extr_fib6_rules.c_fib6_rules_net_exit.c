
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fib6_rules_ops; } ;
struct net {TYPE_1__ ipv6; } ;


 int fib_rules_unregister (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void fib6_rules_net_exit(struct net *net)
{
 fib_rules_unregister(net->ipv6.fib6_rules_ops);
 kfree(net->ipv6.fib6_rules_ops);
}
