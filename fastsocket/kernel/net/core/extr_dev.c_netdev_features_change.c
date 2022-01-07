
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NETDEV_FEAT_CHANGE ;
 int call_netdevice_notifiers (int ,struct net_device*) ;

void netdev_features_change(struct net_device *dev)
{
 call_netdevice_notifiers(NETDEV_FEAT_CHANGE, dev);
}
