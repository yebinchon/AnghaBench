
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct flowi {scalar_t__ fld_src; scalar_t__ fld_dst; scalar_t__ mark; scalar_t__ oif; } ;
struct dst_entry {int dn_next; } ;
struct TYPE_5__ {struct dst_entry dst; } ;
struct TYPE_4__ {scalar_t__ fld_dst; scalar_t__ fld_src; scalar_t__ mark; scalar_t__ iif; scalar_t__ oif; } ;
struct dn_route {TYPE_2__ u; TYPE_1__ fl; } ;
struct TYPE_6__ {int chain; } ;


 int MSG_TRYHARD ;
 unsigned int dn_hash (scalar_t__,scalar_t__) ;
 int dn_route_output_slow (struct dst_entry**,struct flowi const*,int) ;
 TYPE_3__* dn_rt_hash_table ;
 int dst_use (struct dst_entry*,int ) ;
 int jiffies ;
 struct dn_route* rcu_dereference (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;

__attribute__((used)) static int __dn_route_output_key(struct dst_entry **pprt, const struct flowi *flp, int flags)
{
 unsigned hash = dn_hash(flp->fld_src, flp->fld_dst);
 struct dn_route *rt = ((void*)0);

 if (!(flags & MSG_TRYHARD)) {
  rcu_read_lock_bh();
  for(rt = rcu_dereference(dn_rt_hash_table[hash].chain); rt;
   rt = rcu_dereference(rt->u.dst.dn_next)) {
   if ((flp->fld_dst == rt->fl.fld_dst) &&
       (flp->fld_src == rt->fl.fld_src) &&
       (flp->mark == rt->fl.mark) &&
       (rt->fl.iif == 0) &&
       (rt->fl.oif == flp->oif)) {
    dst_use(&rt->u.dst, jiffies);
    rcu_read_unlock_bh();
    *pprt = &rt->u.dst;
    return 0;
   }
  }
  rcu_read_unlock_bh();
 }

 return dn_route_output_slow(pprt, flp, flags);
}
