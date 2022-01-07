
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct udphdr {int dest; int source; } ;
struct udp_table {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; int (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {int dev; scalar_t__ data; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {struct in6_addr daddr; struct in6_addr saddr; } ;
struct ipv6_pinfo {scalar_t__ recverr; } ;
struct inet6_skb_parm {int dummy; } ;
typedef int __be32 ;


 scalar_t__ TCP_ESTABLISHED ;
 struct sock* __udp6_lib_lookup (int ,struct in6_addr*,int ,struct in6_addr*,int ,int ,struct udp_table*) ;
 int dev_net (int ) ;
 int icmpv6_err_convert (int ,int ,int*) ;
 int inet6_iif (struct sk_buff*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ipv6_icmp_error (struct sock*,struct sk_buff*,int,int ,int ,int *) ;
 int ntohl (int ) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;

void __udp6_lib_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
      u8 type, u8 code, int offset, __be32 info,
      struct udp_table *udptable)
{
 struct ipv6_pinfo *np;
 struct ipv6hdr *hdr = (struct ipv6hdr*)skb->data;
 struct in6_addr *saddr = &hdr->saddr;
 struct in6_addr *daddr = &hdr->daddr;
 struct udphdr *uh = (struct udphdr*)(skb->data+offset);
 struct sock *sk;
 int err;

 sk = __udp6_lib_lookup(dev_net(skb->dev), daddr, uh->dest,
          saddr, uh->source, inet6_iif(skb), udptable);
 if (sk == ((void*)0))
  return;

 np = inet6_sk(sk);

 if (!icmpv6_err_convert(type, code, &err) && !np->recverr)
  goto out;

 if (sk->sk_state != TCP_ESTABLISHED && !np->recverr)
  goto out;

 if (np->recverr)
  ipv6_icmp_error(sk, skb, err, uh->dest, ntohl(info), (u8 *)(uh+1));

 sk->sk_err = err;
 sk->sk_error_report(sk);
out:
 sock_put(sk);
}
