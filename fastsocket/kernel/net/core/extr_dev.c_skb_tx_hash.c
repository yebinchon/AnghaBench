
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int real_num_tx_queues; } ;


 int __skb_tx_hash (struct net_device const*,struct sk_buff const*,int ) ;

u16 skb_tx_hash(const struct net_device *dev, const struct sk_buff *skb)
{
 return __skb_tx_hash(dev, skb, dev->real_num_tx_queues);
}
