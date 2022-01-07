
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct flowi {int dummy; } ;
struct TYPE_7__ {int rt_flags; int rt_spec_dst; int rt_gateway; int rt_dst; int rt_src; int rt_type; TYPE_2__* peer; int idev; struct flowi fl; } ;
struct TYPE_5__ {struct net_device* dev; } ;
struct TYPE_8__ {TYPE_3__ rt; TYPE_1__ dst; } ;
struct xfrm_dst {TYPE_4__ u; scalar_t__ route; } ;
struct rtable {int rt_flags; int rt_spec_dst; int rt_gateway; int rt_dst; int rt_src; int rt_type; TYPE_2__* peer; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int refcnt; } ;


 int ENODEV ;
 int RTCF_BROADCAST ;
 int RTCF_LOCAL ;
 int RTCF_MULTICAST ;
 int atomic_inc (int *) ;
 int dev_hold (struct net_device*) ;
 int in_dev_get (struct net_device*) ;

__attribute__((used)) static int xfrm4_fill_dst(struct xfrm_dst *xdst, struct net_device *dev,
     struct flowi *fl)
{
 struct rtable *rt = (struct rtable *)xdst->route;

 xdst->u.rt.fl = *fl;

 xdst->u.dst.dev = dev;
 dev_hold(dev);

 xdst->u.rt.idev = in_dev_get(dev);
 if (!xdst->u.rt.idev)
  return -ENODEV;

 xdst->u.rt.peer = rt->peer;
 if (rt->peer)
  atomic_inc(&rt->peer->refcnt);



 xdst->u.rt.rt_flags = rt->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST |
           RTCF_LOCAL);
 xdst->u.rt.rt_type = rt->rt_type;
 xdst->u.rt.rt_src = rt->rt_src;
 xdst->u.rt.rt_dst = rt->rt_dst;
 xdst->u.rt.rt_gateway = rt->rt_gateway;
 xdst->u.rt.rt_spec_dst = rt->rt_spec_dst;

 return 0;
}
