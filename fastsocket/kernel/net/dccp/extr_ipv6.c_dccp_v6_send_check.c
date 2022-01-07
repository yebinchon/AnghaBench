
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6_pinfo {int daddr; int saddr; } ;
struct dccp_hdr {int dccph_checksum; } ;


 int dccp_csum_outgoing (struct sk_buff*) ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 int dccp_v6_csum_finish (struct sk_buff*,int *,int *) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;

__attribute__((used)) static inline void dccp_v6_send_check(struct sock *sk, int unused_value,
          struct sk_buff *skb)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct dccp_hdr *dh = dccp_hdr(skb);

 dccp_csum_outgoing(skb);
 dh->dccph_checksum = dccp_v6_csum_finish(skb, &np->saddr, &np->daddr);
}
