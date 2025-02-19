
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
typedef scalar_t__ tcph ;
struct vlan_group {int dummy; } ;
struct tcphdr {int seq; } ;
struct skb_frag_struct {int page_offset; int page; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct net_lro_mgr {int features; scalar_t__ max_aggr; int ip_summed; TYPE_1__* dev; int ip_summed_aggr; int lro_arr; scalar_t__ (* get_frag_header ) (struct skb_frag_struct*,void*,void*,void*,int*,void*) ;} ;
struct net_lro_desc {scalar_t__ tcp_next_seq; TYPE_3__* parent; int active; } ;
struct iphdr {int dummy; } ;
typedef scalar_t__ iph ;
typedef int __wsum ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {scalar_t__ nr_frags; } ;
struct TYPE_4__ {int mtu; } ;


 int ETH_P_8021Q ;
 int IP_HDR_LEN (struct iphdr*) ;
 int LRO_F_EXTRACT_VLAN_ID ;
 int LRO_INC_STATS (struct net_lro_mgr*,int ) ;
 int LRO_IPV4 ;
 int LRO_MAX_PG_HLEN ;
 int LRO_TCP ;
 scalar_t__ TCP_HDR_LEN (struct tcphdr*) ;
 int VLAN_HLEN ;
 int aggregated ;
 scalar_t__ htons (int ) ;
 int lro_add_frags (struct net_lro_desc*,int,int,int,struct skb_frag_struct*,struct iphdr*,struct tcphdr*) ;
 int lro_flush (struct net_lro_mgr*,struct net_lro_desc*) ;
 struct sk_buff* lro_gen_skb (struct net_lro_mgr*,struct skb_frag_struct*,int,int,void*,int,int ,int ) ;
 struct net_lro_desc* lro_get_desc (struct net_lro_mgr*,int ,struct iphdr*,struct tcphdr*) ;
 int lro_init_desc (struct net_lro_desc*,struct sk_buff*,struct iphdr*,struct tcphdr*,int ,int *) ;
 scalar_t__ lro_tcp_ip_check (struct iphdr*,struct tcphdr*,int,struct net_lro_desc*) ;
 scalar_t__ ntohl (int ) ;
 void* page_address (int ) ;
 TYPE_2__* skb_shinfo (TYPE_3__*) ;
 scalar_t__ stub1 (struct skb_frag_struct*,void*,void*,void*,int*,void*) ;

__attribute__((used)) static struct sk_buff *__lro_proc_segment(struct net_lro_mgr *lro_mgr,
       struct skb_frag_struct *frags,
       int len, int true_size,
       struct vlan_group *vgrp,
       u16 vlan_tag, void *priv, __wsum sum)
{
 struct net_lro_desc *lro_desc;
 struct iphdr *iph;
 struct tcphdr *tcph;
 struct sk_buff *skb;
 u64 flags;
 void *mac_hdr;
 int mac_hdr_len;
 int hdr_len = LRO_MAX_PG_HLEN;
 int vlan_hdr_len = 0;

 if (!lro_mgr->get_frag_header
     || lro_mgr->get_frag_header(frags, (void *)&mac_hdr, (void *)&iph,
     (void *)&tcph, &flags, priv)) {
  mac_hdr = page_address(frags->page) + frags->page_offset;
  goto out1;
 }

 if (!(flags & LRO_IPV4) || !(flags & LRO_TCP))
  goto out1;

 hdr_len = (int)((void *)(tcph) + TCP_HDR_LEN(tcph) - mac_hdr);
 mac_hdr_len = (int)((void *)(iph) - mac_hdr);

 lro_desc = lro_get_desc(lro_mgr, lro_mgr->lro_arr, iph, tcph);
 if (!lro_desc)
  goto out1;

 if (!lro_desc->active) {
  if (lro_tcp_ip_check(iph, tcph, len - mac_hdr_len, ((void*)0)))
   goto out1;

  skb = lro_gen_skb(lro_mgr, frags, len, true_size, mac_hdr,
      hdr_len, 0, lro_mgr->ip_summed_aggr);
  if (!skb)
   goto out;

  if ((skb->protocol == htons(ETH_P_8021Q))
      && !(lro_mgr->features & LRO_F_EXTRACT_VLAN_ID))
   vlan_hdr_len = VLAN_HLEN;

  iph = (void *)(skb->data + vlan_hdr_len);
  tcph = (void *)((u8 *)skb->data + vlan_hdr_len
    + IP_HDR_LEN(iph));

  lro_init_desc(lro_desc, skb, iph, tcph, 0, ((void*)0));
  LRO_INC_STATS(lro_mgr, aggregated);
  return ((void*)0);
 }

 if (lro_desc->tcp_next_seq != ntohl(tcph->seq))
  goto out2;

 if (lro_tcp_ip_check(iph, tcph, len - mac_hdr_len, lro_desc))
  goto out2;

 lro_add_frags(lro_desc, len, hdr_len, true_size, frags, iph, tcph);
 LRO_INC_STATS(lro_mgr, aggregated);

 if ((skb_shinfo(lro_desc->parent)->nr_frags >= lro_mgr->max_aggr) ||
     lro_desc->parent->len > (0xFFFF - lro_mgr->dev->mtu))
  lro_flush(lro_mgr, lro_desc);

 return ((void*)0);

out2:
 lro_flush(lro_mgr, lro_desc);

out1:
 skb = lro_gen_skb(lro_mgr, frags, len, true_size, mac_hdr,
     hdr_len, sum, lro_mgr->ip_summed);
out:
 return skb;
}
