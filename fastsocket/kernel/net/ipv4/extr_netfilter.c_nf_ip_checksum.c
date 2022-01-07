
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int ip_summed; int len; int csum; } ;
struct iphdr {int daddr; int saddr; } ;
typedef int __sum16 ;




 int CHECKSUM_UNNECESSARY ;
 unsigned int NF_INET_LOCAL_IN ;
 unsigned int NF_INET_PRE_ROUTING ;
 int __skb_checksum_complete (struct sk_buff*) ;
 int csum_fold (int ) ;
 int csum_tcpudp_magic (int ,int ,int ,int ,int ) ;
 int csum_tcpudp_nofold (int ,int ,int ,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;

__sum16 nf_ip_checksum(struct sk_buff *skb, unsigned int hook,
       unsigned int dataoff, u_int8_t protocol)
{
 const struct iphdr *iph = ip_hdr(skb);
 __sum16 csum = 0;

 switch (skb->ip_summed) {
 case 129:
  if (hook != NF_INET_PRE_ROUTING && hook != NF_INET_LOCAL_IN)
   break;
  if ((protocol == 0 && !csum_fold(skb->csum)) ||
      !csum_tcpudp_magic(iph->saddr, iph->daddr,
           skb->len - dataoff, protocol,
           skb->csum)) {
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   break;
  }

 case 128:
  if (protocol == 0)
   skb->csum = 0;
  else
   skb->csum = csum_tcpudp_nofold(iph->saddr, iph->daddr,
             skb->len - dataoff,
             protocol, 0);
  csum = __skb_checksum_complete(skb);
 }
 return csum;
}
