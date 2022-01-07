
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_family; int sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct inet_sock {unsigned short const num; scalar_t__ rcv_saddr; } ;
typedef scalar_t__ const __be32 ;


 scalar_t__ PF_INET ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ipv6_only_sock (struct sock*) ;
 scalar_t__ net_eq (int ,struct net*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static inline int compute_score(struct sock *sk, struct net *net,
    const unsigned short hnum, const __be32 daddr,
    const int dif)
{
 int score = -1;
 struct inet_sock *inet = inet_sk(sk);


 if (net_eq(sock_net(sk), net) && inet->num == hnum &&
   !ipv6_only_sock(sk)) {
  __be32 rcv_saddr = inet->rcv_saddr;
  score = sk->sk_family == PF_INET ? 2 : 1;
  if (rcv_saddr) {
   if (rcv_saddr != daddr)
    return -1;
   score += 4;
  }
  if (sk->sk_bound_dev_if) {
   if (sk->sk_bound_dev_if != dif)
    return -1;
   score += 4;
  }






 }
 return score;
}
