
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_probes_out; int icsk_rto; int icsk_backoff; } ;


 int SOCK_DEAD ;
 int TCP_RTO_MAX ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sysctl_tcp_retries2 ;
 int tcp_orphan_retries (struct sock*,int const) ;
 scalar_t__ tcp_out_of_resources (struct sock*,int) ;
 int tcp_send_head (struct sock*) ;
 int tcp_send_probe0 (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_write_err (struct sock*) ;

__attribute__((used)) static void tcp_probe_timer(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 int max_probes;

 if (tp->packets_out || !tcp_send_head(sk)) {
  icsk->icsk_probes_out = 0;
  return;
 }
 max_probes = sysctl_tcp_retries2;

 if (sock_flag(sk, SOCK_DEAD)) {
  const int alive = ((icsk->icsk_rto << icsk->icsk_backoff) < TCP_RTO_MAX);

  max_probes = tcp_orphan_retries(sk, alive);

  if (tcp_out_of_resources(sk, alive || icsk->icsk_probes_out <= max_probes))
   return;
 }

 if (icsk->icsk_probes_out > max_probes) {
  tcp_write_err(sk);
 } else {

  tcp_send_probe0(sk);
 }
}
