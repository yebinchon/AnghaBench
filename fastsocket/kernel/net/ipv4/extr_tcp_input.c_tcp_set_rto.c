
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int icsk_rto; } ;


 int __tcp_set_rto (struct tcp_sock const*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int tcp_bound_rto (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline void tcp_set_rto(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 inet_csk(sk)->icsk_rto = __tcp_set_rto(tp);
 tcp_bound_rto(sk);
}
