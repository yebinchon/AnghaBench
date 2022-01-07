
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
typedef int gfp_t ;


 int DPRINTK (char*,struct sk_buff*) ;
 int ENABLE_COMMON_SKB_POOL ;
 scalar_t__ NET_SKB_PAD ;
 int NUMA_NO_NODE ;
 int POOL_SKB ;
 int SLAB_SKB ;
 struct sk_buff* __alloc_skb (scalar_t__,int ,int ,int ) ;
 int enable_skb_pool ;
 struct sk_buff* in_softirq () ;
 scalar_t__ likely (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

struct sk_buff *__netdev_alloc_skb(struct net_device *dev,
  unsigned int length, gfp_t gfp_mask)
{
 struct sk_buff *skb;

 if ((enable_skb_pool & ENABLE_COMMON_SKB_POOL) && likely(in_softirq())) {
  skb = __alloc_skb(length + NET_SKB_PAD, gfp_mask, POOL_SKB, NUMA_NO_NODE);
  DPRINTK("Allocate pool skb 0x%p\n", skb);
 } else {
  skb = __alloc_skb(length + NET_SKB_PAD, gfp_mask, SLAB_SKB, NUMA_NO_NODE);
  DPRINTK("Allocate regular skb 0x%p\n", skb);
 }
 if (likely(skb)) {
  skb_reserve(skb, NET_SKB_PAD);
  skb->dev = dev;
 }
 return skb;
}
