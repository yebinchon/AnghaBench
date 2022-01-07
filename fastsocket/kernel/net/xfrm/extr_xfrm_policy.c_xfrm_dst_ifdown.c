
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dst_entry {struct net_device* dev; scalar_t__ xfrm; struct dst_entry* child; } ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;


 int dev_hold (struct net_device*) ;
 TYPE_1__* dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;

void xfrm_dst_ifdown(struct dst_entry *dst, struct net_device *dev)
{
 while ((dst = dst->child) && dst->xfrm && dst->dev == dev) {
  dst->dev = dev_net(dev)->loopback_dev;
  dev_hold(dst->dev);
  dev_put(dev);
 }
}
