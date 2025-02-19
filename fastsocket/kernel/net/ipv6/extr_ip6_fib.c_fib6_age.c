
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lastuse; int __refcnt; } ;
struct TYPE_6__ {TYPE_1__ dst; } ;
struct rt6_info {int rt6i_flags; TYPE_3__* rt6i_nexthop; TYPE_2__ u; int rt6i_expires; } ;
struct TYPE_8__ {int more; scalar_t__ timeout; } ;
struct TYPE_7__ {int flags; } ;


 int NTF_ROUTER ;
 int RT6_TRACE (char*,struct rt6_info*) ;
 int RTF_CACHE ;
 int RTF_EXPIRES ;
 int RTF_GATEWAY ;
 scalar_t__ atomic_read (int *) ;
 TYPE_4__ gc_args ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,int ) ;
 scalar_t__ time_after_eq (unsigned long,scalar_t__) ;

__attribute__((used)) static int fib6_age(struct rt6_info *rt, void *arg)
{
 unsigned long now = jiffies;
 if (rt->rt6i_flags&RTF_EXPIRES && rt->rt6i_expires) {
  if (time_after(now, rt->rt6i_expires)) {
   RT6_TRACE("expiring %p\n", rt);
   return -1;
  }
  gc_args.more++;
 } else if (rt->rt6i_flags & RTF_CACHE) {
  if (atomic_read(&rt->u.dst.__refcnt) == 0 &&
      time_after_eq(now, rt->u.dst.lastuse + gc_args.timeout)) {
   RT6_TRACE("aging clone %p\n", rt);
   return -1;
  } else if ((rt->rt6i_flags & RTF_GATEWAY) &&
      (!(rt->rt6i_nexthop->flags & NTF_ROUTER))) {
   RT6_TRACE("purging route %p via non-router but gateway\n",
      rt);
   return -1;
  }
  gc_args.more++;
 }

 return 0;
}
