
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; int dev; int nf_bridge; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int version; scalar_t__ nexthdr; int payload_len; } ;


 scalar_t__ NEXTHDR_HOP ;
 unsigned int NF_DROP ;
 int NF_HOOK (int ,int ,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 unsigned int NF_STOLEN ;
 int PF_INET6 ;
 int br_nf_pre_routing_finish_ipv6 ;
 scalar_t__ check_hbh_len (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int nf_bridge_alloc (struct sk_buff*) ;
 int nf_bridge_put (int ) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim_rcsum (struct sk_buff*,int) ;
 int setup_pre_routing (struct sk_buff*) ;

__attribute__((used)) static unsigned int br_nf_pre_routing_ipv6(unsigned int hook,
        struct sk_buff *skb,
        const struct net_device *in,
        const struct net_device *out,
        int (*okfn)(struct sk_buff *))
{
 struct ipv6hdr *hdr;
 u32 pkt_len;

 if (skb->len < sizeof(struct ipv6hdr))
  goto inhdr_error;

 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
  goto inhdr_error;

 hdr = ipv6_hdr(skb);

 if (hdr->version != 6)
  goto inhdr_error;

 pkt_len = ntohs(hdr->payload_len);

 if (pkt_len || hdr->nexthdr != NEXTHDR_HOP) {
  if (pkt_len + sizeof(struct ipv6hdr) > skb->len)
   goto inhdr_error;
  if (pskb_trim_rcsum(skb, pkt_len + sizeof(struct ipv6hdr)))
   goto inhdr_error;
 }
 if (hdr->nexthdr == NEXTHDR_HOP && check_hbh_len(skb))
  goto inhdr_error;

 nf_bridge_put(skb->nf_bridge);
 if (!nf_bridge_alloc(skb))
  return NF_DROP;
 if (!setup_pre_routing(skb))
  return NF_DROP;

 NF_HOOK(PF_INET6, NF_INET_PRE_ROUTING, skb, skb->dev, ((void*)0),
  br_nf_pre_routing_finish_ipv6);

 return NF_STOLEN;

inhdr_error:
 return NF_DROP;
}
