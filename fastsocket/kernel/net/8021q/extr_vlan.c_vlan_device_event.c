
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlan_group {int nr_vlans; } ;
struct notifier_block {int dummy; } ;
struct net_device {int features; int flags; int reg_state; int mtu; TYPE_1__* netdev_ops; int name; } ;
struct TYPE_2__ {int (* ndo_vlan_rx_add_vid ) (struct net_device*,int ) ;} ;


 int IFF_UP ;







 int NETIF_F_HW_VLAN_FILTER ;
 int NETREG_UNREGISTERING ;
 int NOTIFY_DONE ;
 int VLAN_GROUP_ARRAY_LEN ;
 int __vlan_device_event (struct net_device*,unsigned long) ;
 struct vlan_group* __vlan_find_group (struct net_device*) ;
 int dev_change_flags (struct net_device*,int) ;
 int dev_set_mtu (struct net_device*,int ) ;
 int ignore_slave_event (struct net_device*,int) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int netif_stacked_transfer_operstate (struct net_device*,struct net_device*) ;
 int pr_info (char*,int ) ;
 int stub1 (struct net_device*,int ) ;
 int unregister_vlan_dev (struct net_device*) ;
 struct net_device* vlan_group_get_device (struct vlan_group*,int) ;
 int vlan_sync_address (struct net_device*,struct net_device*) ;
 int vlan_transfer_features (struct net_device*,struct net_device*) ;

__attribute__((used)) static int vlan_device_event(struct notifier_block *unused, unsigned long event,
        void *ptr)
{
 struct net_device *dev = ptr;
 struct vlan_group *grp;
 int i, flgs;
 struct net_device *vlandev;

 if (is_vlan_dev(dev))
  __vlan_device_event(dev, event);

 if ((event == 128) &&
     (dev->features & NETIF_F_HW_VLAN_FILTER) &&
     dev->netdev_ops->ndo_vlan_rx_add_vid) {
  pr_info("8021q: adding VLAN 0 to HW filter on device %s\n",
   dev->name);
  dev->netdev_ops->ndo_vlan_rx_add_vid(dev, 0);
 }

 grp = __vlan_find_group(dev);
 if (!grp)
  goto out;





 switch (event) {
 case 134:

  for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
   if (ignore_slave_event(dev, i))
    continue;
   vlandev = vlan_group_get_device(grp, i);
   if (!vlandev)
    continue;

   netif_stacked_transfer_operstate(dev, vlandev);
  }
  break;

 case 133:

  for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
   if (ignore_slave_event(dev, i))
    continue;
   vlandev = vlan_group_get_device(grp, i);
   if (!vlandev)
    continue;

   flgs = vlandev->flags;
   if (!(flgs & IFF_UP))
    continue;

   vlan_sync_address(dev, vlandev);
  }
  break;

 case 132:
  for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
   if (ignore_slave_event(dev, i))
    continue;
   vlandev = vlan_group_get_device(grp, i);
   if (!vlandev)
    continue;

   if (vlandev->mtu <= dev->mtu)
    continue;

   dev_set_mtu(vlandev, dev->mtu);
  }
  break;

 case 130:

  for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
   if (ignore_slave_event(dev, i))
    continue;
   vlandev = vlan_group_get_device(grp, i);
   if (!vlandev)
    continue;

   vlan_transfer_features(dev, vlandev);
  }

  break;

 case 131:

  for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
   if (ignore_slave_event(dev, i))
    continue;
   vlandev = vlan_group_get_device(grp, i);
   if (!vlandev)
    continue;

   flgs = vlandev->flags;
   if (!(flgs & IFF_UP))
    continue;

   dev_change_flags(vlandev, flgs & ~IFF_UP);
   netif_stacked_transfer_operstate(dev, vlandev);
  }
  break;

 case 128:

  for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
   if (ignore_slave_event(dev, i))
    continue;
   vlandev = vlan_group_get_device(grp, i);
   if (!vlandev)
    continue;

   flgs = vlandev->flags;
   if (flgs & IFF_UP)
    continue;

   dev_change_flags(vlandev, flgs | IFF_UP);
   netif_stacked_transfer_operstate(dev, vlandev);
  }
  break;

 case 129:

  if (dev->reg_state != NETREG_UNREGISTERING)
   break;


  for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
   if (ignore_slave_event(dev, i))
    continue;
   vlandev = vlan_group_get_device(grp, i);
   if (!vlandev)
    continue;



   if (grp->nr_vlans == 1)
    i = VLAN_GROUP_ARRAY_LEN;

   unregister_vlan_dev(vlandev);
  }
  break;
 }

out:
 return NOTIFY_DONE;
}
