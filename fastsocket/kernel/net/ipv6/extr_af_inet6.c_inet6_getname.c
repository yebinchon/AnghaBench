
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_addr; scalar_t__ sin6_port; scalar_t__ sin6_flowinfo; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; scalar_t__ sk_bound_dev_if; } ;
struct ipv6_pinfo {int rcv_saddr; int saddr; scalar_t__ flow_label; scalar_t__ sndflow; int daddr; } ;
struct inet_sock {scalar_t__ sport; scalar_t__ dport; } ;


 int AF_INET6 ;
 int ENOTCONN ;
 int IPV6_ADDR_LINKLOCAL ;
 int TCPF_CLOSE ;
 int TCPF_SYN_SENT ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ipv6_addr_any (int *) ;
 int ipv6_addr_copy (int *,int *) ;
 int ipv6_addr_type (int *) ;

int inet6_getname(struct socket *sock, struct sockaddr *uaddr,
   int *uaddr_len, int peer)
{
 struct sockaddr_in6 *sin=(struct sockaddr_in6 *)uaddr;
 struct sock *sk = sock->sk;
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);

 sin->sin6_family = AF_INET6;
 sin->sin6_flowinfo = 0;
 sin->sin6_scope_id = 0;
 if (peer) {
  if (!inet->dport)
   return -ENOTCONN;
  if (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_SYN_SENT)) &&
      peer == 1)
   return -ENOTCONN;
  sin->sin6_port = inet->dport;
  ipv6_addr_copy(&sin->sin6_addr, &np->daddr);
  if (np->sndflow)
   sin->sin6_flowinfo = np->flow_label;
 } else {
  if (ipv6_addr_any(&np->rcv_saddr))
   ipv6_addr_copy(&sin->sin6_addr, &np->saddr);
  else
   ipv6_addr_copy(&sin->sin6_addr, &np->rcv_saddr);

  sin->sin6_port = inet->sport;
 }
 if (ipv6_addr_type(&sin->sin6_addr) & IPV6_ADDR_LINKLOCAL)
  sin->sin6_scope_id = sk->sk_bound_dev_if;
 *uaddr_len = sizeof(*sin);
 return(0);
}
