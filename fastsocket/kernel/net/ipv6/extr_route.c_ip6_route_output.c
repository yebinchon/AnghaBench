
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct flowi {int fl6_src; int fl6_dst; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {unsigned int srcprefs; } ;


 unsigned int IPV6_PREFER_SRC_COA ;
 unsigned int IPV6_PREFER_SRC_PUBLIC ;
 unsigned int IPV6_PREFER_SRC_TMP ;
 int RT6_LOOKUP_F_HAS_SADDR ;
 int RT6_LOOKUP_F_IFACE ;
 int RT6_LOOKUP_F_SRCPREF_COA ;
 int RT6_LOOKUP_F_SRCPREF_PUBLIC ;
 int RT6_LOOKUP_F_SRCPREF_TMP ;
 struct dst_entry* fib6_rule_lookup (struct net*,struct flowi*,int,int ) ;
 TYPE_1__* inet6_sk (struct sock*) ;
 int ip6_pol_route_output ;
 int ipv6_addr_any (int *) ;
 scalar_t__ rt6_need_strict (int *) ;

struct dst_entry * ip6_route_output(struct net *net, struct sock *sk,
        struct flowi *fl)
{
 int flags = 0;

 if ((sk && sk->sk_bound_dev_if) || rt6_need_strict(&fl->fl6_dst))
  flags |= RT6_LOOKUP_F_IFACE;

 if (!ipv6_addr_any(&fl->fl6_src))
  flags |= RT6_LOOKUP_F_HAS_SADDR;
 else if (sk) {
  unsigned int prefs = inet6_sk(sk)->srcprefs;
  if (prefs & IPV6_PREFER_SRC_TMP)
   flags |= RT6_LOOKUP_F_SRCPREF_TMP;
  if (prefs & IPV6_PREFER_SRC_PUBLIC)
   flags |= RT6_LOOKUP_F_SRCPREF_PUBLIC;
  if (prefs & IPV6_PREFER_SRC_COA)
   flags |= RT6_LOOKUP_F_SRCPREF_COA;
 }

 return fib6_rule_lookup(net, fl, flags, ip6_pol_route_output);
}
