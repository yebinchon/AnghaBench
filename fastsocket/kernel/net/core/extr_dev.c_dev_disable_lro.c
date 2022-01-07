
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int features; TYPE_1__* ethtool_ops; } ;
struct TYPE_2__ {int (* get_flags ) (struct net_device*) ;int (* set_flags ) (struct net_device*,int) ;} ;


 int ETH_FLAG_LRO ;
 int NETIF_F_LRO ;
 int WARN_ON (int) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*,int) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

void dev_disable_lro(struct net_device *dev)
{




 if (is_vlan_dev(dev))
  dev = vlan_dev_real_dev(dev);

 if (dev->ethtool_ops && dev->ethtool_ops->get_flags &&
     dev->ethtool_ops->set_flags) {
  u32 flags = dev->ethtool_ops->get_flags(dev);
  if (flags & ETH_FLAG_LRO) {
   flags &= ~ETH_FLAG_LRO;
   dev->ethtool_ops->set_flags(dev, flags);
  }
 }
 WARN_ON(dev->features & NETIF_F_LRO);
}
