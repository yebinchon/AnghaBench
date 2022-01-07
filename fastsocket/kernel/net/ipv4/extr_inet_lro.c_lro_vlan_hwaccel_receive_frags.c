
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_group {int dummy; } ;
struct skb_frag_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_lro_mgr {int features; } ;
typedef int __wsum ;


 int LRO_F_NAPI ;
 struct sk_buff* __lro_proc_segment (struct net_lro_mgr*,struct skb_frag_struct*,int,int,struct vlan_group*,int ,void*,int ) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,struct vlan_group*,int ) ;
 int vlan_hwaccel_rx (struct sk_buff*,struct vlan_group*,int ) ;

void lro_vlan_hwaccel_receive_frags(struct net_lro_mgr *lro_mgr,
        struct skb_frag_struct *frags,
        int len, int true_size,
        struct vlan_group *vgrp,
        u16 vlan_tag, void *priv, __wsum sum)
{
 struct sk_buff *skb;

 skb = __lro_proc_segment(lro_mgr, frags, len, true_size, vgrp,
     vlan_tag, priv, sum);
 if (!skb)
  return;

 if (lro_mgr->features & LRO_F_NAPI)
  vlan_hwaccel_receive_skb(skb, vgrp, vlan_tag);
 else
  vlan_hwaccel_rx(skb, vgrp, vlan_tag);
}
