
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int vlan_features; int features; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NETIF_F_TSO ;
 TYPE_1__* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static int vlan_ethtool_set_tso(struct net_device *dev, u32 data)
{
       if (data) {
  struct net_device *real_dev = vlan_dev_info(dev)->real_dev;




  if (!(real_dev->vlan_features & NETIF_F_TSO))
   return -EOPNOTSUPP;
  if (!(real_dev->features & NETIF_F_TSO))
   return -EINVAL;
  dev->features |= NETIF_F_TSO;
 } else {
  dev->features &= ~NETIF_F_TSO;
 }
 return 0;
}
