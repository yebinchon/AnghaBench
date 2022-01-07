
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int cntRTT; int minRTT; int baseRTT; int beg_snd_cwnd; int beg_snd_nxt; int beg_snd_una; } ;
struct yeah {int doing_reno_now; int pkts_acked; scalar_t__ reno_count; scalar_t__ fast_count; int lastQ; TYPE_1__ vegas; } ;
struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ snd_ssthresh; void* snd_cwnd_cnt; scalar_t__ snd_cwnd_clamp; int snd_nxt; } ;
struct sock {int dummy; } ;


 int TCP_SCALABLE_AI_CNT ;
 int TCP_YEAH_ALPHA ;
 int TCP_YEAH_EPSILON ;
 int TCP_YEAH_GAMMA ;
 int TCP_YEAH_PHY ;
 scalar_t__ TCP_YEAH_ZETA ;
 scalar_t__ after (int,int ) ;
 int do_div (int,int) ;
 struct yeah* inet_csk_ca (struct sock*) ;
 void* max (int,unsigned int) ;
 void* min (int,int) ;
 int tcp_cong_avoid_ai (struct tcp_sock*,scalar_t__) ;
 int tcp_is_cwnd_limited (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*) ;

__attribute__((used)) static void tcp_yeah_cong_avoid(struct sock *sk, u32 ack, u32 in_flight)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct yeah *yeah = inet_csk_ca(sk);

 if (!tcp_is_cwnd_limited(sk, in_flight))
  return;

 if (tp->snd_cwnd <= tp->snd_ssthresh)
  tcp_slow_start(tp);

 else if (!yeah->doing_reno_now) {


  tp->snd_cwnd_cnt += yeah->pkts_acked;
  if (tp->snd_cwnd_cnt > min(tp->snd_cwnd, TCP_SCALABLE_AI_CNT)){
   if (tp->snd_cwnd < tp->snd_cwnd_clamp)
    tp->snd_cwnd++;
   tp->snd_cwnd_cnt = 0;
  }

  yeah->pkts_acked = 1;

 } else {

  tcp_cong_avoid_ai(tp, tp->snd_cwnd);
 }
 if (after(ack, yeah->vegas.beg_snd_nxt)) {
  if (yeah->vegas.cntRTT > 2) {
   u32 rtt, queue;
   u64 bw;
   rtt = yeah->vegas.minRTT;




   bw = tp->snd_cwnd;
   bw *= rtt - yeah->vegas.baseRTT;
   do_div(bw, rtt);
   queue = bw;

   if (queue > TCP_YEAH_ALPHA ||
       rtt - yeah->vegas.baseRTT > (yeah->vegas.baseRTT / TCP_YEAH_PHY)) {
    if (queue > TCP_YEAH_ALPHA
        && tp->snd_cwnd > yeah->reno_count) {
     u32 reduction = min(queue / TCP_YEAH_GAMMA ,
           tp->snd_cwnd >> TCP_YEAH_EPSILON);

     tp->snd_cwnd -= reduction;

     tp->snd_cwnd = max(tp->snd_cwnd,
          yeah->reno_count);

     tp->snd_ssthresh = tp->snd_cwnd;
    }

    if (yeah->reno_count <= 2)
     yeah->reno_count = max(tp->snd_cwnd>>1, 2U);
    else
     yeah->reno_count++;

    yeah->doing_reno_now = min(yeah->doing_reno_now + 1,
          0xffffffU);
   } else {
    yeah->fast_count++;

    if (yeah->fast_count > TCP_YEAH_ZETA) {
     yeah->reno_count = 2;
     yeah->fast_count = 0;
    }

    yeah->doing_reno_now = 0;
   }

   yeah->lastQ = queue;

  }




  yeah->vegas.beg_snd_una = yeah->vegas.beg_snd_nxt;
  yeah->vegas.beg_snd_nxt = tp->snd_nxt;
  yeah->vegas.beg_snd_cwnd = tp->snd_cwnd;


  yeah->vegas.cntRTT = 0;
  yeah->vegas.minRTT = 0x7fffffff;
 }
}
