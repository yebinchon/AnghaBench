
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int sacked_out; } ;
struct sock {int dummy; } ;


 int tcp_check_reno_reordering (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_verify_left_out (struct tcp_sock*) ;

__attribute__((used)) static void tcp_add_reno_sack(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 tp->sacked_out++;
 tcp_check_reno_reordering(sk, 0);
 tcp_verify_left_out(tp);
}
