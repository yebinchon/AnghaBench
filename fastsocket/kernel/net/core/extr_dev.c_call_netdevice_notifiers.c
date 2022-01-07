
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netdev_chain ;
 int raw_notifier_call_chain (int *,unsigned long,struct net_device*) ;

int call_netdevice_notifiers(unsigned long val, struct net_device *dev)
{
 return raw_notifier_call_chain(&netdev_chain, val, dev);
}
