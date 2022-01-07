
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vegas {int cntRTT; int minRTT; int baseRTT; int beg_snd_nxt; int doing_vegas_now; } ;
struct tcp_sock {int snd_cwnd; int snd_ssthresh; int snd_cwnd_clamp; int snd_nxt; } ;
struct sock {int dummy; } ;


 scalar_t__ after (int,int ) ;
 int alpha ;
 int beta ;
 int gamma ;
 struct vegas* inet_csk_ca (struct sock*) ;
 int min (int,int) ;
 int tcp_current_ssthresh (struct sock*) ;
 int tcp_reno_cong_avoid (struct sock*,int,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*) ;
 void* tcp_vegas_ssthresh (struct tcp_sock*) ;

__attribute__((used)) static void tcp_vegas_cong_avoid(struct sock *sk, u32 ack, u32 in_flight)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct vegas *vegas = inet_csk_ca(sk);

 if (!vegas->doing_vegas_now) {
  tcp_reno_cong_avoid(sk, ack, in_flight);
  return;
 }

 if (after(ack, vegas->beg_snd_nxt)) {





  vegas->beg_snd_nxt = tp->snd_nxt;
  if (vegas->cntRTT <= 2) {



   tcp_reno_cong_avoid(sk, ack, in_flight);
  } else {
   u32 rtt, diff;
   u64 target_cwnd;
   rtt = vegas->minRTT;







   target_cwnd = tp->snd_cwnd * vegas->baseRTT / rtt;





   diff = tp->snd_cwnd * (rtt-vegas->baseRTT) / vegas->baseRTT;

   if (diff > gamma && tp->snd_cwnd <= tp->snd_ssthresh) {
    tp->snd_cwnd = min(tp->snd_cwnd, (u32)target_cwnd+1);
    tp->snd_ssthresh = tcp_vegas_ssthresh(tp);

   } else if (tp->snd_cwnd <= tp->snd_ssthresh) {

    tcp_slow_start(tp);
   } else {





    if (diff > beta) {



     tp->snd_cwnd--;
     tp->snd_ssthresh
      = tcp_vegas_ssthresh(tp);
    } else if (diff < alpha) {



     tp->snd_cwnd++;
    } else {



    }
   }

   if (tp->snd_cwnd < 2)
    tp->snd_cwnd = 2;
   else if (tp->snd_cwnd > tp->snd_cwnd_clamp)
    tp->snd_cwnd = tp->snd_cwnd_clamp;

   tp->snd_ssthresh = tcp_current_ssthresh(sk);
  }


  vegas->cntRTT = 0;
  vegas->minRTT = 0x7fffffff;
 }

 else if (tp->snd_cwnd <= tp->snd_ssthresh)
  tcp_slow_start(tp);

}
