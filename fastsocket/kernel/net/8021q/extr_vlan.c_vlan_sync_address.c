
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_info {int real_dev_addr; } ;
struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 int dev_unicast_add (struct net_device*,int ) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 int memcpy (int ,int ,int ) ;
 struct vlan_dev_info* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static void vlan_sync_address(struct net_device *dev,
         struct net_device *vlandev)
{
 struct vlan_dev_info *vlan = vlan_dev_info(vlandev);


 if (!compare_ether_addr(vlan->real_dev_addr, dev->dev_addr))
  return;



 if (compare_ether_addr(vlandev->dev_addr, vlan->real_dev_addr) &&
     !compare_ether_addr(vlandev->dev_addr, dev->dev_addr))
  dev_unicast_delete(dev, vlandev->dev_addr);



 if (!compare_ether_addr(vlandev->dev_addr, vlan->real_dev_addr) &&
     compare_ether_addr(vlandev->dev_addr, dev->dev_addr))
  dev_unicast_add(dev, vlandev->dev_addr);

 memcpy(vlan->real_dev_addr, dev->dev_addr, ETH_ALEN);
}
