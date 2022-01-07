
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; int dev; scalar_t__ cb; int pkt_type; struct nf_bridge_info* nf_bridge; } ;
struct nf_bridge_info {int mask; struct net_device* physindev; } ;
struct net_device {int dummy; } ;


 int BRNF_PKT_TYPE ;
 int ETH_P_ARP ;
 int IS_VLAN_ARP (struct sk_buff*) ;
 int NF_BR_FORWARD ;
 int NF_HOOK_THRESH (int ,int ,struct sk_buff*,struct net_device*,int ,int ,int) ;
 int PACKET_OTHERHOST ;
 int PF_BRIDGE ;
 int br_forward_finish ;
 scalar_t__ htons (int ) ;
 int nf_bridge_push_encap_header (struct sk_buff*) ;

__attribute__((used)) static int br_nf_forward_finish(struct sk_buff *skb)
{
 struct nf_bridge_info *nf_bridge = skb->nf_bridge;
 struct net_device *in;

 if (skb->protocol != htons(ETH_P_ARP) && !IS_VLAN_ARP(skb)) {
  in = nf_bridge->physindev;
  if (nf_bridge->mask & BRNF_PKT_TYPE) {
   skb->pkt_type = PACKET_OTHERHOST;
   nf_bridge->mask ^= BRNF_PKT_TYPE;
  }
 } else {
  in = *((struct net_device **)(skb->cb));
 }
 nf_bridge_push_encap_header(skb);
 NF_HOOK_THRESH(PF_BRIDGE, NF_BR_FORWARD, skb, in,
         skb->dev, br_forward_finish, 1);
 return 0;
}
