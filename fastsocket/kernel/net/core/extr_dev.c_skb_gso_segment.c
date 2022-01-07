
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 struct sk_buff* __skb_gso_segment (struct sk_buff*,int,int) ;

struct sk_buff *skb_gso_segment(struct sk_buff *skb, int features)
{
 return __skb_gso_segment(skb, features, 1);
}
