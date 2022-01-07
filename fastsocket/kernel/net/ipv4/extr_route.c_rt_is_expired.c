
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rtable {scalar_t__ rt_genid; TYPE_2__ u; } ;


 int dev_net (int ) ;
 scalar_t__ rt_genid (int ) ;

__attribute__((used)) static inline int rt_is_expired(struct rtable *rth)
{
 return rth->rt_genid != rt_genid(dev_net(rth->u.dst.dev));
}
