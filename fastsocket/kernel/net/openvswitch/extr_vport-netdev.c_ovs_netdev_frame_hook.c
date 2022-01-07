
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct sk_buff {scalar_t__ pkt_type; int dev; } ;


 scalar_t__ PACKET_LOOPBACK ;
 int netdev_port_receive (struct vport*,struct sk_buff*) ;
 struct vport* ovs_netdev_get_vport (int ) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *ovs_netdev_frame_hook(struct sk_buff *skb)
{
 struct vport *vport;

 if (unlikely(skb->pkt_type == PACKET_LOOPBACK))
  return skb;

 vport = ovs_netdev_get_vport(skb->dev);

 netdev_port_receive(vport, skb);

 return ((void*)0);
}
