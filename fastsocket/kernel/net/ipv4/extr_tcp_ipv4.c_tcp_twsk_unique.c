
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_timewait_sock {int tw_ts_recent_stamp; int tw_snd_nxt; int tw_ts_recent; } ;
struct TYPE_2__ {int ts_recent_stamp; int ts_recent; } ;
struct tcp_sock {int write_seq; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;


 int get_seconds () ;
 int sock_hold (struct sock*) ;
 scalar_t__ sysctl_tcp_tw_reuse ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 struct tcp_timewait_sock* tcp_twsk (struct sock*) ;

int tcp_twsk_unique(struct sock *sk, struct sock *sktw, void *twp)
{
 const struct tcp_timewait_sock *tcptw = tcp_twsk(sktw);
 struct tcp_sock *tp = tcp_sk(sk);
 if (tcptw->tw_ts_recent_stamp &&
     (twp == ((void*)0) || (sysctl_tcp_tw_reuse &&
        get_seconds() - tcptw->tw_ts_recent_stamp > 1))) {
  tp->write_seq = tcptw->tw_snd_nxt + 65535 + 2;
  if (tp->write_seq == 0)
   tp->write_seq = 1;
  tp->rx_opt.ts_recent = tcptw->tw_ts_recent;
  tp->rx_opt.ts_recent_stamp = tcptw->tw_ts_recent_stamp;
  sock_hold(sktw);
  return 1;
 }

 return 0;
}
