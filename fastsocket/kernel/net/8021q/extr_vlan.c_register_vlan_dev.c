
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_group {int rcu; int hlist; int nr_vlans; } ;
struct vlan_dev_info {int vlan_id; struct net_device* real_dev; } ;
struct net_device_ops {int (* ndo_vlan_rx_add_vid ) (struct net_device*,int ) ;int (* ndo_vlan_rx_register ) (struct net_device*,struct vlan_group*) ;} ;
struct net_device {int features; struct net_device_ops* netdev_ops; } ;


 int ENOBUFS ;
 int NETIF_F_HW_VLAN_FILTER ;
 int NETIF_F_HW_VLAN_RX ;
 struct vlan_group* __vlan_find_group (struct net_device*) ;
 int call_rcu (int *,int ) ;
 int dev_hold (struct net_device*) ;
 int hlist_del_rcu (int *) ;
 int linkwatch_fire_event (struct net_device*) ;
 int netif_stacked_transfer_operstate (struct net_device*,struct net_device*) ;
 int register_netdevice (struct net_device*) ;
 int stub1 (struct net_device*,struct vlan_group*) ;
 int stub2 (struct net_device*,int ) ;
 struct vlan_dev_info* vlan_dev_info (struct net_device*) ;
 struct vlan_group* vlan_group_alloc (struct net_device*) ;
 int vlan_group_prealloc_vid (struct vlan_group*,int ) ;
 int vlan_group_set_device (struct vlan_group*,int ,struct net_device*) ;
 int vlan_gvrp_init_applicant (struct net_device*) ;
 int vlan_gvrp_uninit_applicant (struct net_device*) ;
 int vlan_rcu_free ;

int register_vlan_dev(struct net_device *dev)
{
 struct vlan_dev_info *vlan = vlan_dev_info(dev);
 struct net_device *real_dev = vlan->real_dev;
 const struct net_device_ops *ops = real_dev->netdev_ops;
 u16 vlan_id = vlan->vlan_id;
 struct vlan_group *grp, *ngrp = ((void*)0);
 int err;

 grp = __vlan_find_group(real_dev);
 if (!grp) {
  ngrp = grp = vlan_group_alloc(real_dev);
  if (!grp)
   return -ENOBUFS;
  err = vlan_gvrp_init_applicant(real_dev);
  if (err < 0)
   goto out_free_group;
 }

 err = vlan_group_prealloc_vid(grp, vlan_id);
 if (err < 0)
  goto out_uninit_applicant;

 err = register_netdevice(dev);
 if (err < 0)
  goto out_uninit_applicant;


 dev_hold(real_dev);

 netif_stacked_transfer_operstate(real_dev, dev);
 linkwatch_fire_event(dev);




 vlan_group_set_device(grp, vlan_id, dev);
 grp->nr_vlans++;

 if (ngrp && real_dev->features & NETIF_F_HW_VLAN_RX)
  ops->ndo_vlan_rx_register(real_dev, ngrp);
 if (real_dev->features & NETIF_F_HW_VLAN_FILTER)
  ops->ndo_vlan_rx_add_vid(real_dev, vlan_id);

 return 0;

out_uninit_applicant:
 if (ngrp)
  vlan_gvrp_uninit_applicant(real_dev);
out_free_group:
 if (ngrp) {
  hlist_del_rcu(&ngrp->hlist);

  call_rcu(&ngrp->rcu, vlan_rcu_free);
 }
 return err;
}
