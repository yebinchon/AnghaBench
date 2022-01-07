
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int dev; int csum; } ;
typedef int __sum16 ;


 scalar_t__ CHECKSUM_COMPLETE ;
 scalar_t__ CHECKSUM_UNNECESSARY ;
 int csum_fold (int ) ;
 scalar_t__ likely (int) ;
 int netdev_rx_csum_fault (int ) ;
 int skb_checksum (struct sk_buff*,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

__sum16 __skb_checksum_complete_head(struct sk_buff *skb, int len)
{
 __sum16 sum;

 sum = csum_fold(skb_checksum(skb, 0, len, skb->csum));
 if (likely(!sum)) {
  if (unlikely(skb->ip_summed == CHECKSUM_COMPLETE))
   netdev_rx_csum_fault(skb->dev);
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 }
 return sum;
}
