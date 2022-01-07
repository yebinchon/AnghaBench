
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 struct dst_entry* fib6_rule_lookup (struct net*,struct flowi*,int,int ) ;
 int ip6_pol_route_lookup ;

struct dst_entry * ip6_route_lookup(struct net *net, struct flowi *fl,
        int flags)
{
 return fib6_rule_lookup(net, fl, flags, ip6_pol_route_lookup);
}
