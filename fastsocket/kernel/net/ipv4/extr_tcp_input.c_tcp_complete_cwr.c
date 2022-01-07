
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int snd_cwnd_stamp; int snd_ssthresh; int snd_cwnd; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;


 int CA_EVENT_COMPLETE_CWR ;
 scalar_t__ TCP_CA_CWR ;
 TYPE_1__* inet_csk (struct sock*) ;
 int min (int ,int ) ;
 int tcp_ca_event (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp ;

__attribute__((used)) static inline void tcp_complete_cwr(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);


 if (tp->undo_marker) {
  if (inet_csk(sk)->icsk_ca_state == TCP_CA_CWR)
   tp->snd_cwnd = min(tp->snd_cwnd, tp->snd_ssthresh);
  else
   tp->snd_cwnd = tp->snd_ssthresh;
  tp->snd_cwnd_stamp = tcp_time_stamp;
 }
 tcp_ca_event(sk, CA_EVENT_COMPLETE_CWR);
}
