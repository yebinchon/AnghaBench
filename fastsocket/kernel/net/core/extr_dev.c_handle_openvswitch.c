
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int priv_flags; int ax25_ptr; } ;


 int IFF_OVS_DATAPATH ;
 int deliver_skb (struct sk_buff*,struct packet_type*,struct net_device*) ;
 struct sk_buff* openvswitch_handle_frame_hook (struct sk_buff*) ;

__attribute__((used)) static inline struct sk_buff *handle_openvswitch(struct sk_buff *skb,
       struct packet_type **pt_prev,
       int *ret,
       struct net_device *orig_dev)
{
 if (!(skb->dev->priv_flags & IFF_OVS_DATAPATH) || !skb->dev->ax25_ptr)
  return skb;

 if (*pt_prev) {
  *ret = deliver_skb(skb, *pt_prev, orig_dev);
  *pt_prev = ((void*)0);
 }
 return openvswitch_handle_frame_hook(skb);
}
