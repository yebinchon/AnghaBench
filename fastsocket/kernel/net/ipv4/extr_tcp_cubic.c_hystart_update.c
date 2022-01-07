
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {int snd_cwnd; int snd_ssthresh; } ;
struct sock {int dummy; } ;
struct bictcp {int found; scalar_t__ last_ack; scalar_t__ round_start; scalar_t__ delay_min; scalar_t__ sample_cnt; scalar_t__ curr_rtt; } ;
typedef scalar_t__ s32 ;


 int HYSTART_ACK_TRAIN ;
 int HYSTART_DELAY ;
 scalar_t__ HYSTART_DELAY_THRESH (int) ;
 scalar_t__ HYSTART_MIN_SAMPLES ;
 scalar_t__ bictcp_clock () ;
 scalar_t__ hystart_ack_delta ;
 int hystart_detect ;
 struct bictcp* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void hystart_update(struct sock *sk, u32 delay)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bictcp *ca = inet_csk_ca(sk);

 if (!(ca->found & hystart_detect)) {
  u32 now = bictcp_clock();


  if ((s32)(now - ca->last_ack) <= hystart_ack_delta) {
   ca->last_ack = now;
   if ((s32)(now - ca->round_start) > ca->delay_min >> 4)
    ca->found |= HYSTART_ACK_TRAIN;
  }


  if (ca->sample_cnt < HYSTART_MIN_SAMPLES) {
   if (ca->curr_rtt == 0 || ca->curr_rtt > delay)
    ca->curr_rtt = delay;

   ca->sample_cnt++;
  } else {
   if (ca->curr_rtt > ca->delay_min +
       HYSTART_DELAY_THRESH(ca->delay_min>>4))
    ca->found |= HYSTART_DELAY;
  }




  if (ca->found & hystart_detect)
   tp->snd_ssthresh = tp->snd_cwnd;
 }
}
