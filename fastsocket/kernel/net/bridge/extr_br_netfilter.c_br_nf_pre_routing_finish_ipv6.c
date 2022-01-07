
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; int pkt_type; struct nf_bridge_info* nf_bridge; } ;
struct TYPE_2__ {int dst; } ;
struct rtable {TYPE_1__ u; } ;
struct nf_bridge_info {int mask; int physindev; } ;


 int BRNF_NF_BRIDGE_PREROUTING ;
 int BRNF_PKT_TYPE ;
 int NF_BR_PRE_ROUTING ;
 int NF_HOOK_THRESH (int ,int ,struct sk_buff*,int ,int *,int ,int) ;
 int PACKET_OTHERHOST ;
 int PF_BRIDGE ;
 int br_handle_frame_finish ;
 struct rtable* bridge_parent_rtable (int ) ;
 int dst_hold (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_bridge_push_encap_header (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int *) ;

__attribute__((used)) static int br_nf_pre_routing_finish_ipv6(struct sk_buff *skb)
{
 struct nf_bridge_info *nf_bridge = skb->nf_bridge;
 struct rtable *rt;

 if (nf_bridge->mask & BRNF_PKT_TYPE) {
  skb->pkt_type = PACKET_OTHERHOST;
  nf_bridge->mask ^= BRNF_PKT_TYPE;
 }
 nf_bridge->mask ^= BRNF_NF_BRIDGE_PREROUTING;

 rt = bridge_parent_rtable(nf_bridge->physindev);
 if (!rt) {
  kfree_skb(skb);
  return 0;
 }
 dst_hold(&rt->u.dst);
 skb_dst_set(skb, &rt->u.dst);

 skb->dev = nf_bridge->physindev;
 nf_bridge_push_encap_header(skb);
 NF_HOOK_THRESH(PF_BRIDGE, NF_BR_PRE_ROUTING, skb, skb->dev, ((void*)0),
         br_handle_frame_finish, 1);

 return 0;
}
