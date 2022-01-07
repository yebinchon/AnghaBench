
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ENETDOWN ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int neigh_blackhole(struct sk_buff *skb)
{
 kfree_skb(skb);
 return -ENETDOWN;
}
