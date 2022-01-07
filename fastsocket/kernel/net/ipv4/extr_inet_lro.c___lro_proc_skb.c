
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct vlan_group {int dummy; } ;
struct tcphdr {int seq; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; int ip_summed; } ;
struct net_lro_mgr {int features; scalar_t__ max_aggr; TYPE_2__* dev; int ip_summed_aggr; int lro_arr; scalar_t__ (* get_skb_header ) (struct sk_buff*,void*,void*,int*,void*) ;} ;
struct net_lro_desc {scalar_t__ tcp_next_seq; scalar_t__ pkt_aggr_cnt; TYPE_1__* parent; int active; } ;
struct iphdr {int dummy; } ;
struct TYPE_4__ {int mtu; } ;
struct TYPE_3__ {int len; } ;


 int ETH_P_8021Q ;
 int LRO_F_EXTRACT_VLAN_ID ;
 int LRO_INC_STATS (struct net_lro_mgr*,int ) ;
 int LRO_IPV4 ;
 int LRO_TCP ;
 int VLAN_HLEN ;
 int aggregated ;
 scalar_t__ htons (int ) ;
 int lro_add_packet (struct net_lro_desc*,struct sk_buff*,struct iphdr*,struct tcphdr*) ;
 int lro_flush (struct net_lro_mgr*,struct net_lro_desc*) ;
 struct net_lro_desc* lro_get_desc (struct net_lro_mgr*,int ,struct iphdr*,struct tcphdr*) ;
 int lro_init_desc (struct net_lro_desc*,struct sk_buff*,struct iphdr*,struct tcphdr*,int ,struct vlan_group*) ;
 scalar_t__ lro_tcp_ip_check (struct iphdr*,struct tcphdr*,scalar_t__,struct net_lro_desc*) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ stub1 (struct sk_buff*,void*,void*,int*,void*) ;

__attribute__((used)) static int __lro_proc_skb(struct net_lro_mgr *lro_mgr, struct sk_buff *skb,
     struct vlan_group *vgrp, u16 vlan_tag, void *priv)
{
 struct net_lro_desc *lro_desc;
 struct iphdr *iph;
 struct tcphdr *tcph;
 u64 flags;
 int vlan_hdr_len = 0;

 if (!lro_mgr->get_skb_header
     || lro_mgr->get_skb_header(skb, (void *)&iph, (void *)&tcph,
           &flags, priv))
  goto out;

 if (!(flags & LRO_IPV4) || !(flags & LRO_TCP))
  goto out;

 lro_desc = lro_get_desc(lro_mgr, lro_mgr->lro_arr, iph, tcph);
 if (!lro_desc)
  goto out;

 if ((skb->protocol == htons(ETH_P_8021Q))
     && !(lro_mgr->features & LRO_F_EXTRACT_VLAN_ID))
  vlan_hdr_len = VLAN_HLEN;

 if (!lro_desc->active) {
  if (lro_tcp_ip_check(iph, tcph, skb->len - vlan_hdr_len, ((void*)0)))
   goto out;

  skb->ip_summed = lro_mgr->ip_summed_aggr;
  lro_init_desc(lro_desc, skb, iph, tcph, vlan_tag, vgrp);
  LRO_INC_STATS(lro_mgr, aggregated);
  return 0;
 }

 if (lro_desc->tcp_next_seq != ntohl(tcph->seq))
  goto out2;

 if (lro_tcp_ip_check(iph, tcph, skb->len, lro_desc))
  goto out2;

 lro_add_packet(lro_desc, skb, iph, tcph);
 LRO_INC_STATS(lro_mgr, aggregated);

 if ((lro_desc->pkt_aggr_cnt >= lro_mgr->max_aggr) ||
     lro_desc->parent->len > (0xFFFF - lro_mgr->dev->mtu))
  lro_flush(lro_mgr, lro_desc);

 return 0;

out2:
 lro_flush(lro_mgr, lro_desc);

out:
 return 1;
}
