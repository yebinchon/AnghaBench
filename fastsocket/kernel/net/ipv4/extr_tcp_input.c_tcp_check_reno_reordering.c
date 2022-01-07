
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;


 scalar_t__ tcp_limit_reno_sacked (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_update_reordering (struct sock*,scalar_t__,int ) ;

__attribute__((used)) static void tcp_check_reno_reordering(struct sock *sk, const int addend)
{
 struct tcp_sock *tp = tcp_sk(sk);
 if (tcp_limit_reno_sacked(tp))
  tcp_update_reordering(sk, tp->packets_out + addend, 0);
}
