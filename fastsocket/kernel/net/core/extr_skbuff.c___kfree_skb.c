
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int kfree_skbmem (struct sk_buff*) ;
 int skb_release_all (struct sk_buff*) ;

void __kfree_skb(struct sk_buff *skb)
{
 skb_release_all(skb);
 kfree_skbmem(skb);
}
