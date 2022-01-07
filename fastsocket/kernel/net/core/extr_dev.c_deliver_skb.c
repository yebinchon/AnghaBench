
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; int users; } ;
struct packet_type {int (* func ) (struct sk_buff*,int ,struct packet_type*,struct net_device*) ;} ;
struct net_device {int dummy; } ;


 int atomic_inc (int *) ;
 int stub1 (struct sk_buff*,int ,struct packet_type*,struct net_device*) ;

__attribute__((used)) static inline int deliver_skb(struct sk_buff *skb,
         struct packet_type *pt_prev,
         struct net_device *orig_dev)
{
 atomic_inc(&skb->users);
 return pt_prev->func(skb, skb->dev, pt_prev, orig_dev);
}
