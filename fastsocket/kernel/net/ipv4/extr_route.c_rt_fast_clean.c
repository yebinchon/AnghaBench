
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rt_next; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct TYPE_4__ {scalar_t__ iif; } ;
struct rtable {int rt_flags; TYPE_3__ u; TYPE_1__ fl; } ;


 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;

__attribute__((used)) static inline int rt_fast_clean(struct rtable *rth)
{


 return (rth->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST)) &&
  rth->fl.iif && rth->u.dst.rt_next;
}
