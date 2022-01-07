
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int rx_opt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int TCP_PAWS_WINDOW ;
 int tcp_disordered_ack (struct sock const*,struct sk_buff const*) ;
 int tcp_paws_check (int *,int ) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;

__attribute__((used)) static inline int tcp_paws_discard(const struct sock *sk,
       const struct sk_buff *skb)
{
 const struct tcp_sock *tp = tcp_sk(sk);

 return !tcp_paws_check(&tp->rx_opt, TCP_PAWS_WINDOW) &&
        !tcp_disordered_ack(sk, skb);
}
