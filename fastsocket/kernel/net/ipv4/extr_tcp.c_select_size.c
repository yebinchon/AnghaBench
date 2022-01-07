
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int mss_cache; } ;
struct sock {int sk_route_caps; } ;


 int MAX_SKB_FRAGS ;
 int MAX_TCP_HEADER ;
 int NETIF_F_SG ;
 int PAGE_SIZE ;
 int SKB_MAX_HEAD (int ) ;
 scalar_t__ sk_can_gso (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline int select_size(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 int tmp = tp->mss_cache;

 if (sk->sk_route_caps & NETIF_F_SG) {
  if (sk_can_gso(sk))
   tmp = 0;
  else {
   int pgbreak = SKB_MAX_HEAD(MAX_TCP_HEADER);

   if (tmp >= pgbreak &&
       tmp <= pgbreak + (MAX_SKB_FRAGS - 1) * PAGE_SIZE)
    tmp = pgbreak;
  }
 }

 return tmp;
}
