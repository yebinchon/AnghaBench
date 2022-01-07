
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int maxvif; struct mif_device* vif6_table; } ;
struct net {TYPE_1__ ipv6; } ;
struct mif_device {struct net_device* dev; } ;


 unsigned long NETDEV_UNREGISTER ;
 int NOTIFY_DONE ;
 struct net* dev_net (struct net_device*) ;
 int mif6_delete (struct net*,int) ;

__attribute__((used)) static int ip6mr_device_event(struct notifier_block *this,
         unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;
 struct net *net = dev_net(dev);
 struct mif_device *v;
 int ct;

 if (event != NETDEV_UNREGISTER)
  return NOTIFY_DONE;

 v = &net->ipv6.vif6_table[0];
 for (ct = 0; ct < net->ipv6.maxvif; ct++, v++) {
  if (v->dev == dev)
   mif6_delete(net, ct);
 }
 return NOTIFY_DONE;
}
