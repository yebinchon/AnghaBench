
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int iif; } ;
struct TYPE_4__ {int lastuse; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {int rt_flags; TYPE_3__ fl; TYPE_2__ u; } ;


 int RTCF_BROADCAST ;
 int RTCF_LOCAL ;
 int RTCF_MULTICAST ;
 int jiffies ;
 scalar_t__ rt_valuable (struct rtable*) ;

__attribute__((used)) static inline u32 rt_score(struct rtable *rt)
{
 u32 score = jiffies - rt->u.dst.lastuse;

 score = ~score & ~(3<<30);

 if (rt_valuable(rt))
  score |= (1<<31);

 if (!rt->fl.iif ||
     !(rt->rt_flags & (RTCF_BROADCAST|RTCF_MULTICAST|RTCF_LOCAL)))
  score |= (1<<30);

 return score;
}
