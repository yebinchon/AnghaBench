
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct sk_buff* skb; struct net_device* dev; } ;


 scalar_t__ GRO_MAX_HEAD ;
 scalar_t__ NET_IP_ALIGN ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

struct sk_buff *napi_get_frags(struct napi_struct *napi)
{
 struct net_device *dev = napi->dev;
 struct sk_buff *skb = napi->skb;

 if (!skb) {
  skb = netdev_alloc_skb(dev, GRO_MAX_HEAD + NET_IP_ALIGN);
  if (!skb)
   goto out;

  skb_reserve(skb, NET_IP_ALIGN);

  napi->skb = skb;
 }

out:
 return skb;
}
