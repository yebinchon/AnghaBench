
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_sock {int daddr; int saddr; } ;
struct dccp_hdr {int dccph_checksum; } ;


 int dccp_csum_outgoing (struct sk_buff*) ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 int dccp_v4_csum_finish (struct sk_buff*,int ,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;

void dccp_v4_send_check(struct sock *sk, int unused, struct sk_buff *skb)
{
 const struct inet_sock *inet = inet_sk(sk);
 struct dccp_hdr *dh = dccp_hdr(skb);

 dccp_csum_outgoing(skb);
 dh->dccph_checksum = dccp_v4_csum_finish(skb, inet->saddr, inet->daddr);
}
