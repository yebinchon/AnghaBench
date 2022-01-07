
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ipv6_txoptions {scalar_t__ dst1opt; } ;


 int NEXTHDR_DEST ;
 int ipv6_push_exthdr (struct sk_buff*,int *,int ,scalar_t__) ;

void ipv6_push_frag_opts(struct sk_buff *skb, struct ipv6_txoptions *opt, u8 *proto)
{
 if (opt->dst1opt)
  ipv6_push_exthdr(skb, proto, NEXTHDR_DEST, opt->dst1opt);
}
