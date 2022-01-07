
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device_ops {int (* ndo_vlan_rx_add_vid ) (TYPE_1__*,int) ;int (* ndo_vlan_rx_register ) (TYPE_1__*,int ) ;} ;
struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* dev; } ;
struct net_bridge {int vlgrp; } ;
struct TYPE_3__ {int features; struct net_device_ops* netdev_ops; } ;


 int NETIF_F_HW_VLAN_FILTER ;
 int NETIF_F_HW_VLAN_RX ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int) ;
 struct net_device* vlan_group_get_device (int ,int) ;

void br_add_vlans_to_port(struct net_bridge *br, struct net_bridge_port *p)
{
 int vid;
 struct net_device *vlan_dev;
 const struct net_device_ops *ops = p->dev->netdev_ops;

 if (!br->vlgrp)
  return;

 if ((p->dev->features & NETIF_F_HW_VLAN_RX) &&
     ops->ndo_vlan_rx_register)
  ops->ndo_vlan_rx_register(p->dev, br->vlgrp);

 if (!(p->dev->features & NETIF_F_HW_VLAN_FILTER) ||
     !ops->ndo_vlan_rx_add_vid)
  return;




 for (vid = 1; vid < 4096; vid++) {
  vlan_dev = vlan_group_get_device(br->vlgrp, vid);
  if (vlan_dev)
   ops->ndo_vlan_rx_add_vid(p->dev, vid);
 }
}
