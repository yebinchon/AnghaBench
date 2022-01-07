
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_mark; int sk_priority; int sk_protocol; } ;
struct sk_buff {int mark; int priority; } ;
struct TYPE_2__ {int dst; } ;
struct rtable {TYPE_1__ u; int rt_src; int rt_dst; } ;
struct iphdr {int version; int ihl; int protocol; int saddr; int daddr; int ttl; scalar_t__ frag_off; int tos; } ;
struct ip_options {int optlen; } ;
struct inet_sock {int tos; } ;
typedef int __be32 ;


 int IP_DF ;
 scalar_t__ htons (int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ip_dont_fragment (struct sock*,int *) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_local_out (struct sk_buff*) ;
 int ip_options_build (struct sk_buff*,struct ip_options*,int ,struct rtable*,int ) ;
 int ip_select_ident (struct iphdr*,int *,struct sock*) ;
 int ip_select_ttl (struct inet_sock*,int *) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

int ip_build_and_send_pkt(struct sk_buff *skb, struct sock *sk,
     __be32 saddr, __be32 daddr, struct ip_options *opt)
{
 struct inet_sock *inet = inet_sk(sk);
 struct rtable *rt = skb_rtable(skb);
 struct iphdr *iph;


 skb_push(skb, sizeof(struct iphdr) + (opt ? opt->optlen : 0));
 skb_reset_network_header(skb);
 iph = ip_hdr(skb);
 iph->version = 4;
 iph->ihl = 5;
 iph->tos = inet->tos;
 if (ip_dont_fragment(sk, &rt->u.dst))
  iph->frag_off = htons(IP_DF);
 else
  iph->frag_off = 0;
 iph->ttl = ip_select_ttl(inet, &rt->u.dst);
 iph->daddr = rt->rt_dst;
 iph->saddr = rt->rt_src;
 iph->protocol = sk->sk_protocol;
 ip_select_ident(iph, &rt->u.dst, sk);

 if (opt && opt->optlen) {
  iph->ihl += opt->optlen>>2;
  ip_options_build(skb, opt, daddr, rt, 0);
 }

 skb->priority = sk->sk_priority;
 skb->mark = sk->sk_mark;


 return ip_local_out(skb);
}
