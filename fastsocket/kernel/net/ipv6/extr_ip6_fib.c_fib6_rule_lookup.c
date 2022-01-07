
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fib6_main_tbl; } ;
struct net {TYPE_1__ ipv6; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef scalar_t__ (* pol_lookup_t ) (struct net*,int ,struct flowi*,int) ;



struct dst_entry *fib6_rule_lookup(struct net *net, struct flowi *fl,
       int flags, pol_lookup_t lookup)
{
 return (struct dst_entry *) lookup(net, net->ipv6.fib6_main_tbl, fl, flags);
}
