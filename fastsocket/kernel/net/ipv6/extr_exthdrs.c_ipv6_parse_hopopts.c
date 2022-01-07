
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int transport_header; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_skb_parm {int hop; int nhoff; } ;


 struct inet6_skb_parm* IP6CB (struct sk_buff*) ;
 scalar_t__ ip6_parse_tlv (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int* skb_transport_header (struct sk_buff*) ;
 int tlvprochopopt_lst ;

int ipv6_parse_hopopts(struct sk_buff *skb)
{
 struct inet6_skb_parm *opt = IP6CB(skb);







 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr) + 8) ||
     !pskb_may_pull(skb, (sizeof(struct ipv6hdr) +
     ((skb_transport_header(skb)[1] + 1) << 3)))) {
  kfree_skb(skb);
  return -1;
 }

 opt->hop = sizeof(struct ipv6hdr);
 if (ip6_parse_tlv(tlvprochopopt_lst, skb)) {
  skb->transport_header += (skb_transport_header(skb)[1] + 1) << 3;
  opt = IP6CB(skb);
  opt->nhoff = sizeof(struct ipv6hdr);
  return 1;
 }
 return -1;
}
