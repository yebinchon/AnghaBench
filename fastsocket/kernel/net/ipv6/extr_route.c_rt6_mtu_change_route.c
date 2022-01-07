
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rt6_mtu_change_arg {scalar_t__ dev; scalar_t__ mtu; } ;
struct TYPE_7__ {scalar_t__* metrics; } ;
struct TYPE_6__ {TYPE_3__ dst; } ;
struct rt6_info {scalar_t__ rt6i_dev; TYPE_2__ u; } ;
struct net {int dummy; } ;
struct TYPE_5__ {scalar_t__ mtu6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int RTAX_ADVMSS ;
 int RTAX_MTU ;
 struct inet6_dev* __in6_dev_get (scalar_t__) ;
 struct net* dev_net (scalar_t__) ;
 int dst_metric_locked (TYPE_3__*,int) ;
 scalar_t__ dst_mtu (TYPE_3__*) ;
 scalar_t__ ipv6_advmss (struct net*,scalar_t__) ;

__attribute__((used)) static int rt6_mtu_change_route(struct rt6_info *rt, void *p_arg)
{
 struct rt6_mtu_change_arg *arg = (struct rt6_mtu_change_arg *) p_arg;
 struct inet6_dev *idev;
 struct net *net = dev_net(arg->dev);







 idev = __in6_dev_get(arg->dev);
 if (idev == ((void*)0))
  return 0;
 if (rt->rt6i_dev == arg->dev &&
     !dst_metric_locked(&rt->u.dst, RTAX_MTU) &&
     (dst_mtu(&rt->u.dst) >= arg->mtu ||
      (dst_mtu(&rt->u.dst) < arg->mtu &&
       dst_mtu(&rt->u.dst) == idev->cnf.mtu6))) {
  rt->u.dst.metrics[RTAX_MTU-1] = arg->mtu;
  rt->u.dst.metrics[RTAX_ADVMSS-1] = ipv6_advmss(net, arg->mtu);
 }
 return 0;
}
