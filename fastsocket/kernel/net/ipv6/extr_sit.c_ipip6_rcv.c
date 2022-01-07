
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; scalar_t__ len; int pkt_type; int protocol; int network_header; int mac_header; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
struct ip_tunnel {TYPE_2__* dev; } ;
struct TYPE_7__ {scalar_t__ flags; } ;
struct TYPE_5__ {int rx_bytes; int rx_packets; int rx_errors; } ;
struct TYPE_6__ {int priv_flags; TYPE_1__ stats; } ;


 int ETH_P_IPV6 ;
 int ICMP_DEST_UNREACH ;
 int ICMP_PORT_UNREACH ;
 int IFF_ISATAP ;
 TYPE_4__* IPCB (struct sk_buff*) ;
 int PACKET_HOST ;
 int dev_net (TYPE_2__*) ;
 int htons (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ipip6_ecn_decapsulate (struct iphdr*,struct sk_buff*) ;
 int ipip6_lock ;
 struct ip_tunnel* ipip6_tunnel_lookup (int ,TYPE_2__*,int ,int ) ;
 int isatap_chksrc (struct sk_buff*,struct iphdr*,struct ip_tunnel*) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int nf_reset (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static int ipip6_rcv(struct sk_buff *skb)
{
 struct iphdr *iph;
 struct ip_tunnel *tunnel;

 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
  goto out;

 iph = ip_hdr(skb);

 read_lock(&ipip6_lock);
 tunnel = ipip6_tunnel_lookup(dev_net(skb->dev), skb->dev,
         iph->saddr, iph->daddr);
 if (tunnel != ((void*)0)) {
  secpath_reset(skb);
  skb->mac_header = skb->network_header;
  skb_reset_network_header(skb);
  IPCB(skb)->flags = 0;
  skb->protocol = htons(ETH_P_IPV6);
  skb->pkt_type = PACKET_HOST;

  if ((tunnel->dev->priv_flags & IFF_ISATAP) &&
      !isatap_chksrc(skb, iph, tunnel)) {
   tunnel->dev->stats.rx_errors++;
   read_unlock(&ipip6_lock);
   kfree_skb(skb);
   return 0;
  }
  tunnel->dev->stats.rx_packets++;
  tunnel->dev->stats.rx_bytes += skb->len;
  skb->dev = tunnel->dev;
  skb_dst_drop(skb);
  nf_reset(skb);
  ipip6_ecn_decapsulate(iph, skb);
  netif_rx(skb);
  read_unlock(&ipip6_lock);
  return 0;
 }

 icmp_send(skb, ICMP_DEST_UNREACH, ICMP_PORT_UNREACH, 0);
 read_unlock(&ipip6_lock);
out:
 kfree_skb(skb);
 return 0;
}
