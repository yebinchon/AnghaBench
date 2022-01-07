
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; scalar_t__ dev; TYPE_2__* nf_bridge; } ;
struct dst_entry {TYPE_1__* neighbour; scalar_t__ hh; } ;
struct TYPE_4__ {int mask; } ;
struct TYPE_3__ {int (* output ) (struct sk_buff*) ;} ;


 int BRNF_NF_BRIDGE_PREROUTING ;
 int BRNF_PKT_TYPE ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_OTHERHOST ;
 scalar_t__ bridge_parent (scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 int neigh_hh_output (scalar_t__,struct sk_buff*) ;
 int nf_bridge_pull_encap_header (struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int br_nf_pre_routing_finish_bridge(struct sk_buff *skb)
{
 if (skb->pkt_type == PACKET_OTHERHOST) {
  skb->pkt_type = PACKET_HOST;
  skb->nf_bridge->mask |= BRNF_PKT_TYPE;
 }
 skb->nf_bridge->mask ^= BRNF_NF_BRIDGE_PREROUTING;

 skb->dev = bridge_parent(skb->dev);
 if (skb->dev) {
  struct dst_entry *dst = skb_dst(skb);

  nf_bridge_pull_encap_header(skb);

  if (dst->hh)
   return neigh_hh_output(dst->hh, skb);
  else if (dst->neighbour)
   return dst->neighbour->output(skb);
 }
 kfree_skb(skb);
 return 0;
}
