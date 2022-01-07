
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct icmp6hdr {int icmp6_type; } ;






 int IPPROTO_ICMPV6 ;
 struct icmp6hdr* icmp6_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;

int ipv6_is_mld(struct sk_buff *skb, int nexthdr)
{
 struct icmp6hdr *pic;

 if (nexthdr != IPPROTO_ICMPV6)
  return 0;

 if (!pskb_may_pull(skb, sizeof(struct icmp6hdr)))
  return 0;

 pic = icmp6_hdr(skb);

 switch (pic->icmp6_type) {
 case 131:
 case 129:
 case 130:
 case 128:
  return 1;
 default:
  break;
 }
 return 0;
}
