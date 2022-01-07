
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ifindex; scalar_t__ iflink; } ;


 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_running (struct net_device*) ;
 scalar_t__ qdisc_tx_changing (struct net_device*) ;

__attribute__((used)) static bool linkwatch_urgent_event(struct net_device *dev)
{
 if (!netif_running(dev))
  return 0;

 if (dev->ifindex != dev->iflink)
  return 1;

 return netif_carrier_ok(dev) && qdisc_tx_changing(dev);
}
