
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; scalar_t__ len; int pkt_type; int protocol; int network_header; int mac_header; } ;
struct iphdr {int daddr; int saddr; } ;
struct ip_tunnel {TYPE_2__* dev; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int ETH_P_IP ;
 int PACKET_HOST ;
 int XFRM_POLICY_IN ;
 int dev_net (TYPE_2__*) ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ipip_ecn_decapsulate (struct iphdr const*,struct sk_buff*) ;
 int ipip_lock ;
 struct ip_tunnel* ipip_tunnel_lookup (int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int nf_reset (struct sk_buff*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int xfrm4_policy_check (int *,int ,struct sk_buff*) ;

__attribute__((used)) static int ipip_rcv(struct sk_buff *skb)
{
 struct ip_tunnel *tunnel;
 const struct iphdr *iph = ip_hdr(skb);

 read_lock(&ipip_lock);
 if ((tunnel = ipip_tunnel_lookup(dev_net(skb->dev),
     iph->saddr, iph->daddr)) != ((void*)0)) {
  if (!xfrm4_policy_check(((void*)0), XFRM_POLICY_IN, skb)) {
   read_unlock(&ipip_lock);
   kfree_skb(skb);
   return 0;
  }

  secpath_reset(skb);

  skb->mac_header = skb->network_header;
  skb_reset_network_header(skb);
  skb->protocol = htons(ETH_P_IP);
  skb->pkt_type = PACKET_HOST;

  tunnel->dev->stats.rx_packets++;
  tunnel->dev->stats.rx_bytes += skb->len;
  skb->dev = tunnel->dev;
  skb_dst_drop(skb);
  nf_reset(skb);
  ipip_ecn_decapsulate(iph, skb);
  netif_rx(skb);
  read_unlock(&ipip_lock);
  return 0;
 }
 read_unlock(&ipip_lock);

 return -1;
}
