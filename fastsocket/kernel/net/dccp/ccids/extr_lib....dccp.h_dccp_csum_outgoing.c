
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; int csum; } ;
struct TYPE_2__ {scalar_t__ dccph_cscov; } ;


 unsigned int dccp_csum_coverage (struct sk_buff*) ;
 TYPE_1__* dccp_hdr (struct sk_buff*) ;
 int skb_checksum (struct sk_buff*,int ,unsigned int,int ) ;

__attribute__((used)) static inline void dccp_csum_outgoing(struct sk_buff *skb)
{
 unsigned int cov = dccp_csum_coverage(skb);

 if (cov >= skb->len)
  dccp_hdr(skb)->dccph_cscov = 0;

 skb->csum = skb_checksum(skb, 0, (cov > skb->len)? skb->len : cov, 0);
}
