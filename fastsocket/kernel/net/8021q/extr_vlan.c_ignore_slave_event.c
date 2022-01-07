
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int priv_flags; struct net_device* master; } ;


 int IFF_BONDING ;
 struct vlan_group* __vlan_find_group (struct net_device*) ;
 struct net_device* vlan_group_get_device (struct vlan_group*,int) ;

__attribute__((used)) static int ignore_slave_event(struct net_device *dev, int i)
{
 struct vlan_group *sgrp, *mgrp;
 struct net_device *svdev, *mvdev;


 if (!dev->master)
  return 0;


 if (!(dev->master->priv_flags & IFF_BONDING))
  return 0;

 sgrp = __vlan_find_group(dev);
 mgrp = __vlan_find_group(dev->master);


 if (!sgrp || !mgrp)
  return 0;

 svdev = vlan_group_get_device(sgrp, i);
 mvdev = vlan_group_get_device(mgrp, i);


 if (!svdev || !mvdev)
  return 0;
 if (svdev == mvdev)
  return 1;

 return 0;
}
