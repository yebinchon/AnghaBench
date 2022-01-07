
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long lastuse; struct dn_route* dn_next; int __refcnt; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct dn_route {TYPE_2__ u; } ;
struct TYPE_6__ {int lock; struct dn_route* chain; } ;


 int HZ ;
 scalar_t__ atomic_read (int *) ;
 int decnet_dst_gc_interval ;
 int dn_route_timer ;
 int dn_rt_hash_mask ;
 TYPE_3__* dn_rt_hash_table ;
 int dnrt_free (struct dn_route*) ;
 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dn_dst_check_expire(unsigned long dummy)
{
 int i;
 struct dn_route *rt, **rtp;
 unsigned long now = jiffies;
 unsigned long expire = 120 * HZ;

 for(i = 0; i <= dn_rt_hash_mask; i++) {
  rtp = &dn_rt_hash_table[i].chain;

  spin_lock(&dn_rt_hash_table[i].lock);
  while((rt=*rtp) != ((void*)0)) {
   if (atomic_read(&rt->u.dst.__refcnt) ||
     (now - rt->u.dst.lastuse) < expire) {
    rtp = &rt->u.dst.dn_next;
    continue;
   }
   *rtp = rt->u.dst.dn_next;
   rt->u.dst.dn_next = ((void*)0);
   dnrt_free(rt);
  }
  spin_unlock(&dn_rt_hash_table[i].lock);

  if ((jiffies - now) > 0)
   break;
 }

 mod_timer(&dn_route_timer, now + decnet_dst_gc_interval * HZ);
}
