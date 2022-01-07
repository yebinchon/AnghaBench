
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_lro_mgr {int features; } ;
struct net_lro_desc {int pkt_aggr_cnt; int parent; int vlan_tag; scalar_t__ vgrp; int mss; } ;
struct TYPE_2__ {int gso_size; } ;


 int LRO_F_NAPI ;
 int LRO_INC_STATS (struct net_lro_mgr*,int ) ;
 int flushed ;
 int lro_clear_desc (struct net_lro_desc*) ;
 int lro_update_tcp_ip_header (struct net_lro_desc*) ;
 int netif_receive_skb (int ) ;
 int netif_rx (int ) ;
 TYPE_1__* skb_shinfo (int ) ;
 int vlan_hwaccel_receive_skb (int ,scalar_t__,int ) ;
 int vlan_hwaccel_rx (int ,scalar_t__,int ) ;

__attribute__((used)) static void lro_flush(struct net_lro_mgr *lro_mgr,
        struct net_lro_desc *lro_desc)
{
 if (lro_desc->pkt_aggr_cnt > 1)
  lro_update_tcp_ip_header(lro_desc);

 skb_shinfo(lro_desc->parent)->gso_size = lro_desc->mss;

 if (lro_desc->vgrp) {
  if (lro_mgr->features & LRO_F_NAPI)
   vlan_hwaccel_receive_skb(lro_desc->parent,
       lro_desc->vgrp,
       lro_desc->vlan_tag);
  else
   vlan_hwaccel_rx(lro_desc->parent,
     lro_desc->vgrp,
     lro_desc->vlan_tag);

 } else {
  if (lro_mgr->features & LRO_F_NAPI)
   netif_receive_skb(lro_desc->parent);
  else
   netif_rx(lro_desc->parent);
 }

 LRO_INC_STATS(lro_mgr, flushed);
 lro_clear_desc(lro_desc);
}
