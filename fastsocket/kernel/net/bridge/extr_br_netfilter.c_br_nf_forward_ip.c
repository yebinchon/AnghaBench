
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {scalar_t__ protocol; scalar_t__ pkt_type; int dev; struct nf_bridge_info* nf_bridge; } ;
struct nf_bridge_info {int physoutdev; int mask; } ;
struct net_device {int dummy; } ;
struct inet_skb_parm {int dummy; } ;


 int BRNF_BRIDGED ;
 int BRNF_PKT_TYPE ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IPCB (struct sk_buff*) ;
 scalar_t__ IS_PPPOE_IP (struct sk_buff*) ;
 scalar_t__ IS_PPPOE_IPV6 (struct sk_buff*) ;
 scalar_t__ IS_VLAN_IP (struct sk_buff*) ;
 scalar_t__ IS_VLAN_IPV6 (struct sk_buff*) ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int NF_HOOK (int ,int ,struct sk_buff*,struct net_device*,struct net_device*,int ) ;
 int NF_INET_FORWARD ;
 unsigned int NF_STOLEN ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_OTHERHOST ;
 int PF_INET ;
 int PF_INET6 ;
 int br_nf_forward_finish ;
 struct net_device* bridge_parent (struct net_device const*) ;
 scalar_t__ htons (int ) ;
 int memset (int ,int ,int) ;
 int nf_bridge_pull_encap_header (struct sk_buff*) ;
 int nf_bridge_unshare (struct sk_buff*) ;

__attribute__((used)) static unsigned int br_nf_forward_ip(unsigned int hook, struct sk_buff *skb,
         const struct net_device *in,
         const struct net_device *out,
         int (*okfn)(struct sk_buff *))
{
 struct nf_bridge_info *nf_bridge;
 struct net_device *parent;
 u_int8_t pf;

 if (!skb->nf_bridge)
  return NF_ACCEPT;



 if (!nf_bridge_unshare(skb))
  return NF_DROP;

 parent = bridge_parent(out);
 if (!parent)
  return NF_DROP;

 if (skb->protocol == htons(ETH_P_IP) || IS_VLAN_IP(skb) ||
     IS_PPPOE_IP(skb))
  pf = PF_INET;
 else if (skb->protocol == htons(ETH_P_IPV6) || IS_VLAN_IPV6(skb) ||
   IS_PPPOE_IPV6(skb))
  pf = PF_INET6;
 else
  return NF_ACCEPT;

 nf_bridge_pull_encap_header(skb);

 nf_bridge = skb->nf_bridge;
 if (skb->pkt_type == PACKET_OTHERHOST) {
  skb->pkt_type = PACKET_HOST;
  nf_bridge->mask |= BRNF_PKT_TYPE;
 }


 memset(IPCB(skb), 0, sizeof(struct inet_skb_parm));


 nf_bridge->mask |= BRNF_BRIDGED;
 nf_bridge->physoutdev = skb->dev;

 NF_HOOK(pf, NF_INET_FORWARD, skb, bridge_parent(in), parent,
  br_nf_forward_finish);

 return NF_STOLEN;
}
