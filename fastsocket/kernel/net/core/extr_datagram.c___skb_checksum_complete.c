
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
typedef int __sum16 ;


 int __skb_checksum_complete_head (struct sk_buff*,int ) ;

__sum16 __skb_checksum_complete(struct sk_buff *skb)
{
 return __skb_checksum_complete_head(skb, skb->len);
}
