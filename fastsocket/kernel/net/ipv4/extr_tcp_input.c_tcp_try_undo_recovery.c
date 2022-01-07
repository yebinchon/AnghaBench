
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ snd_una; scalar_t__ high_seq; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;


 int DBGUNDO (struct sock*,char*) ;
 int LINUX_MIB_TCPFULLUNDO ;
 int LINUX_MIB_TCPLOSSUNDO ;
 int NET_INC_STATS_BH (int ,int) ;
 scalar_t__ TCP_CA_Loss ;
 int TCP_CA_Open ;
 TYPE_1__* inet_csk (struct sock*) ;
 int sock_net (struct sock*) ;
 scalar_t__ tcp_is_reno (struct tcp_sock*) ;
 scalar_t__ tcp_may_undo (struct tcp_sock*) ;
 int tcp_moderate_cwnd (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_undo_cwr (struct sock*,int) ;

__attribute__((used)) static int tcp_try_undo_recovery(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tcp_may_undo(tp)) {
  int mib_idx;




  DBGUNDO(sk, inet_csk(sk)->icsk_ca_state == TCP_CA_Loss ? "loss" : "retrans");
  tcp_undo_cwr(sk, 1);
  if (inet_csk(sk)->icsk_ca_state == TCP_CA_Loss)
   mib_idx = LINUX_MIB_TCPLOSSUNDO;
  else
   mib_idx = LINUX_MIB_TCPFULLUNDO;

  NET_INC_STATS_BH(sock_net(sk), mib_idx);
  tp->undo_marker = 0;
 }
 if (tp->snd_una == tp->high_seq && tcp_is_reno(tp)) {



  tcp_moderate_cwnd(tp);
  return 1;
 }
 tcp_set_ca_state(sk, TCP_CA_Open);
 return 0;
}
