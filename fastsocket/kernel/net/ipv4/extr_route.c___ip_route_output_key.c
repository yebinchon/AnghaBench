
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int dev; int rt_next; } ;
struct TYPE_6__ {TYPE_4__ dst; } ;
struct TYPE_5__ {scalar_t__ fl4_dst; scalar_t__ fl4_src; scalar_t__ iif; scalar_t__ oif; scalar_t__ mark; int fl4_tos; } ;
struct rtable {TYPE_2__ u; TYPE_1__ fl; } ;
struct net {int dummy; } ;
struct flowi {scalar_t__ fl4_dst; scalar_t__ fl4_src; scalar_t__ oif; scalar_t__ mark; int fl4_tos; } ;
struct TYPE_7__ {int chain; } ;


 int IPTOS_RT_MASK ;
 int RTO_ONLINK ;
 int RT_CACHE_STAT_INC (int ) ;
 int dev_net (int ) ;
 int dst_use (TYPE_4__*,int ) ;
 int ip_route_output_slow (struct net*,struct rtable**,struct flowi const*) ;
 int jiffies ;
 scalar_t__ net_eq (int ,struct net*) ;
 int out_hit ;
 int out_hlist_search ;
 struct rtable* rcu_dereference (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int rt_caching (struct net*) ;
 int rt_genid (struct net*) ;
 unsigned int rt_hash (scalar_t__,scalar_t__,scalar_t__,int ) ;
 TYPE_3__* rt_hash_table ;
 int rt_is_expired (struct rtable*) ;

int __ip_route_output_key(struct net *net, struct rtable **rp,
     const struct flowi *flp)
{
 unsigned hash;
 struct rtable *rth;

 if (!rt_caching(net))
  goto slow_output;

 hash = rt_hash(flp->fl4_dst, flp->fl4_src, flp->oif, rt_genid(net));

 rcu_read_lock_bh();
 for (rth = rcu_dereference(rt_hash_table[hash].chain); rth;
  rth = rcu_dereference(rth->u.dst.rt_next)) {
  if (rth->fl.fl4_dst == flp->fl4_dst &&
      rth->fl.fl4_src == flp->fl4_src &&
      rth->fl.iif == 0 &&
      rth->fl.oif == flp->oif &&
      rth->fl.mark == flp->mark &&
      !((rth->fl.fl4_tos ^ flp->fl4_tos) &
       (IPTOS_RT_MASK | RTO_ONLINK)) &&
      net_eq(dev_net(rth->u.dst.dev), net) &&
      !rt_is_expired(rth)) {
   dst_use(&rth->u.dst, jiffies);
   RT_CACHE_STAT_INC(out_hit);
   rcu_read_unlock_bh();
   *rp = rth;
   return 0;
  }
  RT_CACHE_STAT_INC(out_hlist_search);
 }
 rcu_read_unlock_bh();

slow_output:
 return ip_route_output_slow(net, rp, flp);
}
