
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int eth_type_trans (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static __be16 __eth_type_trans_no_dev_change(struct sk_buff *skb,
          struct net_device *dev)
{
 struct net_device *tmp_dev = skb->dev;
 __be16 ret;

 ret = eth_type_trans(skb, dev);
 skb->dev = tmp_dev;
 return ret;
}
