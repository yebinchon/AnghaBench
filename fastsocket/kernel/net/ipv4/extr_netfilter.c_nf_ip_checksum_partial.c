
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int ip_summed; int len; int csum; } ;
struct iphdr {int daddr; int saddr; } ;
typedef int __sum16 ;




 int CHECKSUM_UNNECESSARY ;
 int __skb_checksum_complete_head (struct sk_buff*,unsigned int) ;
 int csum_tcpudp_nofold (int ,int ,int ,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int nf_ip_checksum (struct sk_buff*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static __sum16 nf_ip_checksum_partial(struct sk_buff *skb, unsigned int hook,
          unsigned int dataoff, unsigned int len,
          u_int8_t protocol)
{
 const struct iphdr *iph = ip_hdr(skb);
 __sum16 csum = 0;

 switch (skb->ip_summed) {
 case 129:
  if (len == skb->len - dataoff)
   return nf_ip_checksum(skb, hook, dataoff, protocol);

 case 128:
  skb->csum = csum_tcpudp_nofold(iph->saddr, iph->daddr, protocol,
            skb->len - dataoff, 0);
  skb->ip_summed = 128;
  csum = __skb_checksum_complete_head(skb, dataoff + len);
  if (!csum)
   skb->ip_summed = CHECKSUM_UNNECESSARY;
 }
 return csum;
}
