
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_group {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_lro_mgr {int features; } ;


 int LRO_F_NAPI ;
 scalar_t__ __lro_proc_skb (struct net_lro_mgr*,struct sk_buff*,struct vlan_group*,int ,void*) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,struct vlan_group*,int ) ;
 int vlan_hwaccel_rx (struct sk_buff*,struct vlan_group*,int ) ;

void lro_vlan_hwaccel_receive_skb(struct net_lro_mgr *lro_mgr,
      struct sk_buff *skb,
      struct vlan_group *vgrp,
      u16 vlan_tag,
      void *priv)
{
 if (__lro_proc_skb(lro_mgr, skb, vgrp, vlan_tag, priv)) {
  if (lro_mgr->features & LRO_F_NAPI)
   vlan_hwaccel_receive_skb(skb, vgrp, vlan_tag);
  else
   vlan_hwaccel_rx(skb, vgrp, vlan_tag);
 }
}
