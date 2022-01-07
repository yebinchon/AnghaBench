
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct westwood {int reset_rtt_min; int bk; } ;
struct tcp_sock {void* snd_ssthresh; void* snd_cwnd; } ;
struct sock {int dummy; } ;
typedef enum tcp_ca_event { ____Placeholder_tcp_ca_event } tcp_ca_event ;






 struct westwood* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 void* tcp_westwood_bw_rttmin (struct sock*) ;
 int update_rtt_min (struct westwood*) ;
 int westwood_acked_count (struct sock*) ;
 int westwood_fast_bw (struct sock*) ;
 int westwood_update_window (struct sock*) ;

__attribute__((used)) static void tcp_westwood_event(struct sock *sk, enum tcp_ca_event event)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct westwood *w = inet_csk_ca(sk);

 switch (event) {
 case 130:
  westwood_fast_bw(sk);
  break;

 case 131:
  tp->snd_cwnd = tp->snd_ssthresh = tcp_westwood_bw_rttmin(sk);
  break;

 case 129:
  tp->snd_ssthresh = tcp_westwood_bw_rttmin(sk);

  w->reset_rtt_min = 1;
  break;

 case 128:
  westwood_update_window(sk);
  w->bk += westwood_acked_count(sk);
  update_rtt_min(w);
  break;

 default:

  break;
 }
}
