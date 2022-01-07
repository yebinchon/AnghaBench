
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; int pkt_type; struct nf_bridge_info* nf_bridge; } ;
struct nf_bridge_info {int mask; struct net_device* physindev; int physoutdev; } ;
struct net_device {int dummy; } ;
struct inet_skb_parm {int dummy; } ;


 int BRNF_BRIDGED_DNAT ;
 int BRNF_PKT_TYPE ;
 int IPCB (struct sk_buff*) ;
 unsigned int NF_ACCEPT ;
 int NF_BR_FORWARD ;
 unsigned int NF_DROP ;
 int NF_HOOK (int ,int ,struct sk_buff*,struct net_device*,int ,int ) ;
 unsigned int NF_STOLEN ;
 int PACKET_OTHERHOST ;
 int PF_BRIDGE ;
 int br_forward_finish ;
 int memset (int ,int ,int) ;
 int nf_bridge_push_encap_header (struct sk_buff*) ;
 int nf_bridge_unshare (struct sk_buff*) ;

__attribute__((used)) static unsigned int br_nf_local_out(unsigned int hook, struct sk_buff *skb,
        const struct net_device *in,
        const struct net_device *out,
        int (*okfn)(struct sk_buff *))
{
 struct net_device *realindev;
 struct nf_bridge_info *nf_bridge;

 if (!skb->nf_bridge)
  return NF_ACCEPT;



 if (!nf_bridge_unshare(skb))
  return NF_DROP;

 nf_bridge = skb->nf_bridge;
 if (!(nf_bridge->mask & BRNF_BRIDGED_DNAT))
  return NF_ACCEPT;



 nf_bridge->physoutdev = skb->dev;
 realindev = nf_bridge->physindev;

 if (nf_bridge->mask & BRNF_PKT_TYPE) {
  skb->pkt_type = PACKET_OTHERHOST;
  nf_bridge->mask ^= BRNF_PKT_TYPE;
 }
 nf_bridge_push_encap_header(skb);


 memset(IPCB(skb), 0, sizeof(struct inet_skb_parm));

 NF_HOOK(PF_BRIDGE, NF_BR_FORWARD, skb, realindev, skb->dev,
  br_forward_finish);
 return NF_STOLEN;
}
