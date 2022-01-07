
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
typedef int __sum16 ;


 int csum_fold (int ) ;
 int skb_checksum (struct sk_buff*,int,scalar_t__,int ) ;

__sum16 ip_vs_checksum_complete(struct sk_buff *skb, int offset)
{
 return csum_fold(skb_checksum(skb, offset, skb->len - offset, 0));
}
