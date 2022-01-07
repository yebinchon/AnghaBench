
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;



 int NOTIFY_DONE ;
 int arp_tbl ;
 int dev_net (struct net_device*) ;
 int neigh_changeaddr (int *,struct net_device*) ;
 int rt_cache_flush (int ,int ) ;

__attribute__((used)) static int arp_netdev_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;

 switch (event) {
 case 128:
  neigh_changeaddr(&arp_tbl, dev);
  rt_cache_flush(dev_net(dev), 0);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}
