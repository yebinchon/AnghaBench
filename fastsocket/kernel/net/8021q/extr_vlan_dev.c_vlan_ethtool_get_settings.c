
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_info {int real_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int dev_ethtool_get_settings (int ,struct ethtool_cmd*) ;
 struct vlan_dev_info* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static int vlan_ethtool_get_settings(struct net_device *dev,
         struct ethtool_cmd *cmd)
{
 const struct vlan_dev_info *vlan = vlan_dev_info(dev);
 return dev_ethtool_get_settings(vlan->real_dev, cmd);
}
