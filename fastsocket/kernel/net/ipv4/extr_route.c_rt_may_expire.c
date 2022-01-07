
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long lastuse; scalar_t__ expires; int __refcnt; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;


 scalar_t__ atomic_read (int *) ;
 unsigned long jiffies ;
 int rt_fast_clean (struct rtable*) ;
 scalar_t__ rt_valuable (struct rtable*) ;
 scalar_t__ time_after_eq (unsigned long,scalar_t__) ;

__attribute__((used)) static int rt_may_expire(struct rtable *rth, unsigned long tmo1, unsigned long tmo2)
{
 unsigned long age;
 int ret = 0;

 if (atomic_read(&rth->u.dst.__refcnt))
  goto out;

 ret = 1;
 if (rth->u.dst.expires &&
     time_after_eq(jiffies, rth->u.dst.expires))
  goto out;

 age = jiffies - rth->u.dst.lastuse;
 ret = 0;
 if ((age <= tmo1 && !rt_fast_clean(rth)) ||
     (age <= tmo2 && rt_valuable(rth)))
  goto out;
 ret = 1;
out: return ret;
}
