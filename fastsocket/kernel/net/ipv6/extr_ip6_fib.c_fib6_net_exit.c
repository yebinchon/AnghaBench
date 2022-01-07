
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rt6_stats; int fib_table_hash; int fib6_main_tbl; int fib6_local_tbl; int ip6_fib_timer; } ;
struct net {TYPE_1__ ipv6; } ;


 int del_timer_sync (int *) ;
 int kfree (int ) ;
 int rt6_ifdown (struct net*,int *) ;

__attribute__((used)) static void fib6_net_exit(struct net *net)
{
 rt6_ifdown(net, ((void*)0));
 del_timer_sync(&net->ipv6.ip6_fib_timer);




 kfree(net->ipv6.fib6_main_tbl);
 kfree(net->ipv6.fib_table_hash);
 kfree(net->ipv6.rt6_stats);
}
