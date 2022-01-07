
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; int pkt_type; } ;


 int CHECKSUM_UNNECESSARY ;
 int PACKET_LOOPBACK ;
 int WARN_ON (int) ;
 int __skb_pull (struct sk_buff*,int ) ;
 int netif_rx (struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int ip6_dev_loopback_xmit(struct sk_buff *newskb)
{
 skb_reset_mac_header(newskb);
 __skb_pull(newskb, skb_network_offset(newskb));
 newskb->pkt_type = PACKET_LOOPBACK;
 newskb->ip_summed = CHECKSUM_UNNECESSARY;
 WARN_ON(!skb_dst(newskb));

 netif_rx(newskb);
 return 0;
}
