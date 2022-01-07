
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int packets_out; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int icsk_rto; } ;


 int ICSK_TIME_RETRANS ;
 int TCP_RTO_MAX ;
 TYPE_1__* inet_csk (struct sock*) ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_rearm_rto(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (!tp->packets_out) {
  inet_csk_clear_xmit_timer(sk, ICSK_TIME_RETRANS);
 } else {
  inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
       inet_csk(sk)->icsk_rto, TCP_RTO_MAX);
 }
}
