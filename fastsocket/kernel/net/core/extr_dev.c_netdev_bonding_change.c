
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int call_netdevice_notifiers (unsigned long,struct net_device*) ;

void netdev_bonding_change(struct net_device *dev, unsigned long event)
{
 call_netdevice_notifiers(event, dev);
}
