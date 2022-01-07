
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vlan_dev_info {int real_dev; } ;
struct net_device {int dummy; } ;


 int dev_ethtool_get_flags (int ) ;
 struct vlan_dev_info* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static u32 vlan_ethtool_get_flags(struct net_device *dev)
{
 const struct vlan_dev_info *vlan = vlan_dev_info(dev);
 return dev_ethtool_get_flags(vlan->real_dev);
}
