
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ snd_cwnd_clamp; scalar_t__ snd_ssthresh; scalar_t__ reordering; scalar_t__ srtt; scalar_t__ mdev; scalar_t__ mdev_max; scalar_t__ rttvar; int total_retrans; int snd_cwnd; int snd_cwnd_stamp; int snd_nxt; int rtt_seq; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {void* icsk_rto; } ;


 int RTAX_CWND ;
 int RTAX_REORDERING ;
 int RTAX_RTT ;
 int RTAX_RTTVAR ;
 int RTAX_SSTHRESH ;
 scalar_t__ TCP_INFINITE_SSTHRESH ;
 void* TCP_TIMEOUT_FALLBACK ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 int dst_confirm (struct dst_entry*) ;
 scalar_t__ dst_metric (struct dst_entry*,int ) ;
 scalar_t__ dst_metric_locked (struct dst_entry*,int ) ;
 scalar_t__ dst_metric_rtt (struct dst_entry*,int ) ;
 TYPE_1__* inet_csk (struct sock*) ;
 scalar_t__ max (scalar_t__,int ) ;
 int tcp_disable_fack (struct tcp_sock*) ;
 int tcp_init_cwnd (struct tcp_sock*,struct dst_entry*) ;
 int tcp_rto_min (struct sock*) ;
 int tcp_set_rto (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp ;

__attribute__((used)) static void tcp_init_metrics(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct dst_entry *dst = __sk_dst_get(sk);

 if (dst == ((void*)0))
  goto reset;

 dst_confirm(dst);

 if (dst_metric_locked(dst, RTAX_CWND))
  tp->snd_cwnd_clamp = dst_metric(dst, RTAX_CWND);
 if (dst_metric(dst, RTAX_SSTHRESH)) {
  tp->snd_ssthresh = dst_metric(dst, RTAX_SSTHRESH);
  if (tp->snd_ssthresh > tp->snd_cwnd_clamp)
   tp->snd_ssthresh = tp->snd_cwnd_clamp;
 } else {



  tp->snd_ssthresh = TCP_INFINITE_SSTHRESH;
 }
 if (dst_metric(dst, RTAX_REORDERING) &&
     tp->reordering != dst_metric(dst, RTAX_REORDERING)) {
  tcp_disable_fack(tp);
  tp->reordering = dst_metric(dst, RTAX_REORDERING);
 }

 if (dst_metric(dst, RTAX_RTT) == 0 || tp->srtt == 0)
  goto reset;
 if (dst_metric_rtt(dst, RTAX_RTT) > tp->srtt) {
  tp->srtt = dst_metric_rtt(dst, RTAX_RTT);
  tp->rtt_seq = tp->snd_nxt;
 }
 if (dst_metric_rtt(dst, RTAX_RTTVAR) > tp->mdev) {
  tp->mdev = dst_metric_rtt(dst, RTAX_RTTVAR);
  tp->mdev_max = tp->rttvar = max(tp->mdev, tcp_rto_min(sk));
 }
 tcp_set_rto(sk);
reset:
 if (tp->srtt == 0) {






  tp->mdev = tp->mdev_max = tp->rttvar = TCP_TIMEOUT_FALLBACK;
  inet_csk(sk)->icsk_rto = TCP_TIMEOUT_FALLBACK;
 }





 if (tp->total_retrans > 1)
  tp->snd_cwnd = 1;
 else
  tp->snd_cwnd = tcp_init_cwnd(tp, dst);
 tp->snd_cwnd_stamp = tcp_time_stamp;
}
