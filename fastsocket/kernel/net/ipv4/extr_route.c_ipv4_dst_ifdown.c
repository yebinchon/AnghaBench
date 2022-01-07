
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtable {struct in_device* idev; } ;
struct net_device {int dummy; } ;
struct in_device {struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;


 TYPE_1__* dev_net (struct net_device*) ;
 struct in_device* in_dev_get (struct net_device*) ;
 int in_dev_put (struct in_device*) ;

__attribute__((used)) static void ipv4_dst_ifdown(struct dst_entry *dst, struct net_device *dev,
       int how)
{
 struct rtable *rt = (struct rtable *) dst;
 struct in_device *idev = rt->idev;
 if (dev != dev_net(dev)->loopback_dev && idev && idev->dev == dev) {
  struct in_device *loopback_idev =
   in_dev_get(dev_net(dev)->loopback_dev);
  if (loopback_idev) {
   rt->idev = loopback_idev;
   in_dev_put(idev);
  }
 }
}
