
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct inet6_dev {int dummy; } ;


 struct inet6_dev* __in6_dev_get (int ) ;
 struct inet6_dev* ip6_dst_idev (scalar_t__) ;
 scalar_t__ skb_dst (struct sk_buff*) ;

__attribute__((used)) static inline struct inet6_dev *ipv6_skb_idev(struct sk_buff *skb)
{
 return skb_dst(skb) ? ip6_dst_idev(skb_dst(skb)) : __in6_dev_get(skb->dev);
}
