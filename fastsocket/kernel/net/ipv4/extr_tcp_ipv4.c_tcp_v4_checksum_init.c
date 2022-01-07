
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int len; int csum; } ;
struct iphdr {int daddr; int saddr; } ;
typedef int __sum16 ;


 scalar_t__ CHECKSUM_COMPLETE ;
 scalar_t__ CHECKSUM_UNNECESSARY ;
 int IPPROTO_TCP ;
 int __skb_checksum_complete (struct sk_buff*) ;
 int csum_tcpudp_nofold (int ,int ,int,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int tcp_v4_check (int,int ,int ,int ) ;

__attribute__((used)) static __sum16 tcp_v4_checksum_init(struct sk_buff *skb)
{
 const struct iphdr *iph = ip_hdr(skb);

 if (skb->ip_summed == CHECKSUM_COMPLETE) {
  if (!tcp_v4_check(skb->len, iph->saddr,
      iph->daddr, skb->csum)) {
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   return 0;
  }
 }

 skb->csum = csum_tcpudp_nofold(iph->saddr, iph->daddr,
           skb->len, IPPROTO_TCP, 0);

 if (skb->len <= 76) {
  return __skb_checksum_complete(skb);
 }
 return 0;
}
