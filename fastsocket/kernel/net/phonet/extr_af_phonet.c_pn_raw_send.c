
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_PHONET_HEADER ;
 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int pn_send (struct sk_buff*,struct net_device*,int ,int ,int ,int) ;
 int skb_copy_to_linear_data (struct sk_buff*,void const*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int pn_raw_send(const void *data, int len, struct net_device *dev,
   u16 dst, u16 src, u8 res)
{
 struct sk_buff *skb = alloc_skb(MAX_PHONET_HEADER + len, GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 skb_reserve(skb, MAX_PHONET_HEADER);
 __skb_put(skb, len);
 skb_copy_to_linear_data(skb, data, len);
 return pn_send(skb, dev, dst, src, res, 1);
}
