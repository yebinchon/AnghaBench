
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; int sk_dst_cache; } ;
struct inet_connection_sock {scalar_t__ icsk_rto; scalar_t__ icsk_syn_retries; scalar_t__ icsk_retransmits; } ;
struct TYPE_2__ {int icsk_user_timeout; } ;


 int SOCK_DEAD ;
 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 scalar_t__ TCP_RTO_MAX ;
 int dst_negative_advice (int *) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 scalar_t__ retransmits_timed_out (struct sock*,int,int ,int) ;
 TYPE_1__* sk_extended (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sysctl_tcp_retries1 ;
 int sysctl_tcp_retries2 ;
 int sysctl_tcp_syn_retries ;
 int tcp_mtu_probing (struct inet_connection_sock*,struct sock*) ;
 int tcp_orphan_retries (struct sock*,int const) ;
 scalar_t__ tcp_out_of_resources (struct sock*,int) ;
 int tcp_write_err (struct sock*) ;

__attribute__((used)) static int tcp_write_timeout(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 int retry_until;
 bool do_reset, syn_set = 0;

 if ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {
  if (icsk->icsk_retransmits)
   dst_negative_advice(&sk->sk_dst_cache);
  retry_until = icsk->icsk_syn_retries ? : sysctl_tcp_syn_retries;
  syn_set = 1;
 } else {
  if (retransmits_timed_out(sk, sysctl_tcp_retries1, 0, 0)) {

   tcp_mtu_probing(icsk, sk);

   dst_negative_advice(&sk->sk_dst_cache);
  }

  retry_until = sysctl_tcp_retries2;
  if (sock_flag(sk, SOCK_DEAD)) {
   const int alive = (icsk->icsk_rto < TCP_RTO_MAX);

   retry_until = tcp_orphan_retries(sk, alive);
   do_reset = alive ||
       !retransmits_timed_out(sk, retry_until, 0, 0);

   if (tcp_out_of_resources(sk, do_reset))
    return 1;
  }
 }

 if (retransmits_timed_out(sk, retry_until,
      syn_set ? 0 : sk_extended(sk)->icsk_user_timeout, syn_set)) {

  tcp_write_err(sk);
  return 1;
 }
 return 0;
}
