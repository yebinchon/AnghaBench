
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 int LINUX_MIB_XFRMINHDRERROR ;
 int XFRM_INC_STATS (struct net*,int ) ;
 struct net* dev_net (int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ xfrm_decode_session (struct sk_buff*,struct flowi*,unsigned short) ;
 scalar_t__ xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,int *,int ) ;

int __xfrm_route_forward(struct sk_buff *skb, unsigned short family)
{
 struct net *net = dev_net(skb->dev);
 struct flowi fl;
 struct dst_entry *dst;
 int res;

 if (xfrm_decode_session(skb, &fl, family) < 0) {

  XFRM_INC_STATS(net, LINUX_MIB_XFRMINHDRERROR);
  return 0;
 }

 dst = skb_dst(skb);

 res = xfrm_lookup(net, &dst, &fl, ((void*)0), 0) == 0;
 skb_dst_set(skb, dst);
 return res;
}
