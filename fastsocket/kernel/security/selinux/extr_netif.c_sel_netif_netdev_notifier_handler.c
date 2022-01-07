
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int ifindex; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int * dev_net (struct net_device*) ;
 int init_net ;
 int sel_netif_kill (int ) ;

__attribute__((used)) static int sel_netif_netdev_notifier_handler(struct notifier_block *this,
          unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;

 if (dev_net(dev) != &init_net)
  return NOTIFY_DONE;

 if (event == NETDEV_DOWN)
  sel_netif_kill(dev->ifindex);

 return NOTIFY_DONE;
}
