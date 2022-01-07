
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int sacked_out; } ;
struct sock {int dummy; } ;


 int tcp_check_reno_reordering (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_verify_left_out (struct tcp_sock*) ;

__attribute__((used)) static void tcp_remove_reno_sacks(struct sock *sk, int acked)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (acked > 0) {

  if (acked - 1 >= tp->sacked_out)
   tp->sacked_out = 0;
  else
   tp->sacked_out -= acked - 1;
 }
 tcp_check_reno_reordering(sk, acked);
 tcp_verify_left_out(tp);
}
