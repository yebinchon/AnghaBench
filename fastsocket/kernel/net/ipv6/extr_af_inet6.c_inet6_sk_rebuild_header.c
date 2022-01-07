
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_err_soft; scalar_t__ sk_route_caps; int sk_bound_dev_if; int sk_protocol; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct in6_addr {int dummy; } ;
struct ipv6_pinfo {TYPE_1__* opt; int flow_label; struct in6_addr saddr; struct in6_addr daddr; int dst_cookie; } ;
struct inet_sock {int sport; int dport; } ;
struct flowi {struct in6_addr fl6_dst; int fl_ip_sport; int fl_ip_dport; int oif; int fl6_flowlabel; struct in6_addr fl6_src; int proto; } ;
struct dst_entry {int dummy; } ;
typedef int fl ;
struct TYPE_2__ {scalar_t__ srcrt; } ;


 int __ip6_dst_store (struct sock*,struct dst_entry*,int *,int *) ;
 struct dst_entry* __sk_dst_check (struct sock*,int ) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip6_dst_lookup (struct sock*,struct dst_entry**,struct flowi*) ;
 int ipv6_addr_copy (struct in6_addr*,struct in6_addr*) ;
 int memset (struct flowi*,int ,int) ;
 int security_sk_classify_flow (struct sock*,struct flowi*) ;
 int sock_net (struct sock*) ;
 int xfrm_lookup (int ,struct dst_entry**,struct flowi*,struct sock*,int ) ;

int inet6_sk_rebuild_header(struct sock *sk)
{
 int err;
 struct dst_entry *dst;
 struct ipv6_pinfo *np = inet6_sk(sk);

 dst = __sk_dst_check(sk, np->dst_cookie);

 if (dst == ((void*)0)) {
  struct inet_sock *inet = inet_sk(sk);
  struct in6_addr *final_p = ((void*)0), final;
  struct flowi fl;

  memset(&fl, 0, sizeof(fl));
  fl.proto = sk->sk_protocol;
  ipv6_addr_copy(&fl.fl6_dst, &np->daddr);
  ipv6_addr_copy(&fl.fl6_src, &np->saddr);
  fl.fl6_flowlabel = np->flow_label;
  fl.oif = sk->sk_bound_dev_if;
  fl.fl_ip_dport = inet->dport;
  fl.fl_ip_sport = inet->sport;
  security_sk_classify_flow(sk, &fl);

  if (np->opt && np->opt->srcrt) {
   struct rt0_hdr *rt0 = (struct rt0_hdr *) np->opt->srcrt;
   ipv6_addr_copy(&final, &fl.fl6_dst);
   ipv6_addr_copy(&fl.fl6_dst, rt0->addr);
   final_p = &final;
  }

  err = ip6_dst_lookup(sk, &dst, &fl);
  if (err) {
   sk->sk_route_caps = 0;
   return err;
  }
  if (final_p)
   ipv6_addr_copy(&fl.fl6_dst, final_p);

  if ((err = xfrm_lookup(sock_net(sk), &dst, &fl, sk, 0)) < 0) {
   sk->sk_err_soft = -err;
   return err;
  }

  __ip6_dst_store(sk, dst, ((void*)0), ((void*)0));
 }

 return 0;
}
