
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int transport_header; } ;
struct inet6_skb_parm {int dst1; int nhoff; int lastopt; } ;
struct dst_entry {int dev; } ;
typedef int __u16 ;


 struct inet6_skb_parm* IP6CB (struct sk_buff*) ;
 int IP6_INC_STATS_BH (int ,int ,int ) ;
 int IPSTATS_MIB_INHDRERRORS ;
 int dev_net (int ) ;
 struct dst_entry* dst_clone (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int ip6_dst_idev (struct dst_entry*) ;
 scalar_t__ ip6_parse_tlv (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 int* skb_transport_header (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int tlvprocdestopt_lst ;

__attribute__((used)) static int ipv6_destopt_rcv(struct sk_buff *skb)
{
 struct inet6_skb_parm *opt = IP6CB(skb);



 struct dst_entry *dst;

 if (!pskb_may_pull(skb, skb_transport_offset(skb) + 8) ||
     !pskb_may_pull(skb, (skb_transport_offset(skb) +
     ((skb_transport_header(skb)[1] + 1) << 3)))) {
  IP6_INC_STATS_BH(dev_net(skb_dst(skb)->dev), ip6_dst_idev(skb_dst(skb)),
     IPSTATS_MIB_INHDRERRORS);
  kfree_skb(skb);
  return -1;
 }

 opt->lastopt = opt->dst1 = skb_network_header_len(skb);




 dst = dst_clone(skb_dst(skb));
 if (ip6_parse_tlv(tlvprocdestopt_lst, skb)) {
  dst_release(dst);
  skb->transport_header += (skb_transport_header(skb)[1] + 1) << 3;
  opt = IP6CB(skb);



  opt->nhoff = opt->dst1;

  return 1;
 }

 IP6_INC_STATS_BH(dev_net(dst->dev),
    ip6_dst_idev(dst), IPSTATS_MIB_INHDRERRORS);
 dst_release(dst);
 return -1;
}
