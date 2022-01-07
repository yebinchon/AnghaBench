
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; } ;


 int RTCF_NOTIFY ;
 int RTCF_REDIRECTED ;

__attribute__((used)) static inline int rt_valuable(struct rtable *rth)
{
 return (rth->rt_flags & (RTCF_REDIRECTED | RTCF_NOTIFY)) ||
  rth->u.dst.expires;
}
