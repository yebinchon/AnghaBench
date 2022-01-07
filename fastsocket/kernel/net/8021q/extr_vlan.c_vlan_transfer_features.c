
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned long features; unsigned long vlan_features; int fcoe_ddp_xid; int gso_max_size; } ;
struct TYPE_2__ {int flags; } ;


 unsigned long NETIF_F_ALL_CSUM ;
 unsigned long NETIF_F_FCOE_CRC ;
 unsigned long NETIF_F_GSO ;
 unsigned long NETIF_F_GSO_MASK ;
 int NETIF_F_HW_VLAN_TX ;
 unsigned long NETIF_F_SG ;
 int VLAN_FLAG_REORDER_HDR ;
 int netdev_features_change (struct net_device*) ;
 TYPE_1__* vlan_dev_info (struct net_device*) ;

void vlan_transfer_features(struct net_device *dev, struct net_device *vlandev)
{
 unsigned long old_features = vlandev->features;
 unsigned long new_features = ((old_features & ~dev->vlan_features) |
          (dev->features & dev->vlan_features));




 if (!(dev->features & NETIF_F_HW_VLAN_TX) &&
     !(vlan_dev_info(vlandev)->flags & VLAN_FLAG_REORDER_HDR))
  new_features &= ~(NETIF_F_ALL_CSUM | NETIF_F_SG |
      NETIF_F_GSO | NETIF_F_GSO_MASK |
      NETIF_F_FCOE_CRC);
 vlandev->features = new_features;
 vlandev->gso_max_size = dev->gso_max_size;



 if (old_features != vlandev->features)
  netdev_features_change(vlandev);
}
