
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int csum; } ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int csum_add (int ,int ) ;
 int csum_partial (void const*,unsigned int,int ) ;

__attribute__((used)) static inline void ovs_skb_postpush_rcsum(struct sk_buff *skb,
          const void *start, unsigned int len)
{
 if (skb->ip_summed == CHECKSUM_COMPLETE)
  skb->csum = csum_add(skb->csum, csum_partial(start, len, 0));
}
