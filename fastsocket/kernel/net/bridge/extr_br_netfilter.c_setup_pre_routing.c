
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; struct net_device* dev; struct nf_bridge_info* nf_bridge; } ;
struct nf_bridge_info {struct net_device* physindev; int mask; } ;
struct net_device {int dummy; } ;


 int BRNF_NF_BRIDGE_PREROUTING ;
 int BRNF_PKT_TYPE ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_OTHERHOST ;
 struct net_device* bridge_parent (struct net_device*) ;

__attribute__((used)) static struct net_device *setup_pre_routing(struct sk_buff *skb)
{
 struct nf_bridge_info *nf_bridge = skb->nf_bridge;

 if (skb->pkt_type == PACKET_OTHERHOST) {
  skb->pkt_type = PACKET_HOST;
  nf_bridge->mask |= BRNF_PKT_TYPE;
 }

 nf_bridge->mask |= BRNF_NF_BRIDGE_PREROUTING;
 nf_bridge->physindev = skb->dev;
 skb->dev = bridge_parent(skb->dev);

 return skb->dev;
}
