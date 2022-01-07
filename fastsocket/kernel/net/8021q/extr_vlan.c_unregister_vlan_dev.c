
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vlan_group {scalar_t__ nr_vlans; int rcu; int hlist; } ;
struct vlan_dev_info {scalar_t__ vlan_id; struct net_device* real_dev; } ;
struct net_device_ops {int (* ndo_vlan_rx_register ) (struct net_device*,int *) ;int (* ndo_vlan_rx_kill_vid ) (struct net_device*,scalar_t__) ;} ;
struct net_device {int features; struct net_device_ops* netdev_ops; } ;


 int ASSERT_RTNL () ;
 int BUG_ON (int) ;
 int NETIF_F_HW_VLAN_FILTER ;
 int NETIF_F_HW_VLAN_RX ;
 struct vlan_group* __vlan_find_group (struct net_device*) ;
 int call_rcu (int *,int ) ;
 int dev_put (struct net_device*) ;
 int hlist_del_rcu (int *) ;
 int stub1 (struct net_device*,scalar_t__) ;
 int stub2 (struct net_device*,int *) ;
 int synchronize_net () ;
 int unregister_netdevice (struct net_device*) ;
 struct vlan_dev_info* vlan_dev_info (struct net_device*) ;
 int vlan_group_set_device (struct vlan_group*,scalar_t__,int *) ;
 int vlan_gvrp_uninit_applicant (struct net_device*) ;
 int vlan_rcu_free ;

void unregister_vlan_dev(struct net_device *dev)
{
 struct vlan_dev_info *vlan = vlan_dev_info(dev);
 struct net_device *real_dev = vlan->real_dev;
 const struct net_device_ops *ops = real_dev->netdev_ops;
 struct vlan_group *grp;
 u16 vlan_id = vlan->vlan_id;

 ASSERT_RTNL();

 grp = __vlan_find_group(real_dev);
 BUG_ON(!grp);





 if (vlan_id && (real_dev->features & NETIF_F_HW_VLAN_FILTER))
  ops->ndo_vlan_rx_kill_vid(real_dev, vlan_id);

 vlan_group_set_device(grp, vlan_id, ((void*)0));
 grp->nr_vlans--;

 synchronize_net();

 unregister_netdevice(dev);


 if (grp->nr_vlans == 0) {
  vlan_gvrp_uninit_applicant(real_dev);

  if (real_dev->features & NETIF_F_HW_VLAN_RX)
   ops->ndo_vlan_rx_register(real_dev, ((void*)0));

  hlist_del_rcu(&grp->hlist);


  call_rcu(&grp->rcu, vlan_rcu_free);
 }


 dev_put(real_dev);
}
