
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; int csum; } ;
typedef int __wsum ;
typedef int __sum16 ;
typedef int __be32 ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int IPPROTO_UDP ;
 int __skb_checksum_complete (struct sk_buff*) ;
 int csum_add (int ,int ) ;
 int csum_fold (int ) ;
 int csum_tcpudp_nofold (int ,int ,unsigned short,int ,int ) ;
 scalar_t__ skb_csum_unnecessary (struct sk_buff*) ;

__attribute__((used)) static __sum16 checksum_udp(struct sk_buff *skb, struct udphdr *uh,
       unsigned short ulen, __be32 saddr, __be32 daddr)
{
 __wsum psum;

 if (uh->check == 0 || skb_csum_unnecessary(skb))
  return 0;

 psum = csum_tcpudp_nofold(saddr, daddr, ulen, IPPROTO_UDP, 0);

 if (skb->ip_summed == CHECKSUM_COMPLETE &&
     !csum_fold(csum_add(psum, skb->csum)))
  return 0;

 skb->csum = psum;

 return __skb_checksum_complete(skb);
}
