
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; int len; int csum; } ;
struct iphdr {int daddr; int saddr; } ;
struct TYPE_2__ {int cscov; scalar_t__ partial_cov; } ;


 scalar_t__ CHECKSUM_COMPLETE ;
 void* CHECKSUM_UNNECESSARY ;
 int IPPROTO_UDPLITE ;
 TYPE_1__* UDP_SKB_CB (struct sk_buff*) ;
 int csum_tcpudp_magic (int ,int ,int ,int,int ) ;
 int csum_tcpudp_nofold (int ,int ,int ,int,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int skb_csum_unnecessary (struct sk_buff*) ;
 int udplite_checksum_init (struct sk_buff*,struct udphdr*) ;

__attribute__((used)) static inline int udp4_csum_init(struct sk_buff *skb, struct udphdr *uh,
     int proto)
{
 const struct iphdr *iph;
 int err;

 UDP_SKB_CB(skb)->partial_cov = 0;
 UDP_SKB_CB(skb)->cscov = skb->len;

 if (proto == IPPROTO_UDPLITE) {
  err = udplite_checksum_init(skb, uh);
  if (err)
   return err;
 }

 iph = ip_hdr(skb);
 if (uh->check == 0) {
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 } else if (skb->ip_summed == CHECKSUM_COMPLETE) {
  if (!csum_tcpudp_magic(iph->saddr, iph->daddr, skb->len,
          proto, skb->csum))
   skb->ip_summed = CHECKSUM_UNNECESSARY;
 }
 if (!skb_csum_unnecessary(skb))
  skb->csum = csum_tcpudp_nofold(iph->saddr, iph->daddr,
            skb->len, proto, 0);




 return 0;
}
