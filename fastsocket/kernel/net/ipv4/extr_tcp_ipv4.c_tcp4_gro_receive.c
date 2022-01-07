
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int ip_summed; int csum; } ;
struct iphdr {int daddr; int saddr; } ;
typedef int __wsum ;
typedef int __sum16 ;
struct TYPE_2__ {int flush; } ;




 void* CHECKSUM_UNNECESSARY ;
 int IPPROTO_TCP ;
 TYPE_1__* NAPI_GRO_CB (struct sk_buff*) ;
 int csum_fold (int ) ;
 int csum_tcpudp_nofold (int ,int ,int ,int ,int ) ;
 int skb_checksum (struct sk_buff*,int ,int ,int ) ;
 int skb_gro_len (struct sk_buff*) ;
 struct iphdr* skb_gro_network_header (struct sk_buff*) ;
 int skb_gro_offset (struct sk_buff*) ;
 struct sk_buff** tcp_gro_receive (struct sk_buff**,struct sk_buff*) ;
 int tcp_v4_check (int ,int ,int ,int ) ;

struct sk_buff **tcp4_gro_receive(struct sk_buff **head, struct sk_buff *skb)
{
 struct iphdr *iph = skb_gro_network_header(skb);
 __wsum wsum;
 __sum16 sum;

 switch (skb->ip_summed) {
 case 129:
  if (!tcp_v4_check(skb_gro_len(skb), iph->saddr, iph->daddr,
      skb->csum)) {
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   break;
  }
flush:
  NAPI_GRO_CB(skb)->flush = 1;
  return ((void*)0);

 case 128:
  wsum = csum_tcpudp_nofold(iph->saddr, iph->daddr,
       skb_gro_len(skb), IPPROTO_TCP, 0);
  sum = csum_fold(skb_checksum(skb,
          skb_gro_offset(skb),
          skb_gro_len(skb),
          wsum));
  if (sum)
   goto flush;

  skb->ip_summed = CHECKSUM_UNNECESSARY;
  break;
 }

 return tcp_gro_receive(head, skb);
}
