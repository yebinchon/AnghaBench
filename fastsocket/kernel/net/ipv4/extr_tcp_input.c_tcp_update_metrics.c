
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {unsigned long srtt; int mdev; int snd_cwnd; int snd_ssthresh; int reordering; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; scalar_t__ icsk_backoff; } ;
struct dst_entry {int flags; int* metrics; } ;


 int DST_HOST ;
 int RTAX_CWND ;
 int RTAX_REORDERING ;
 int RTAX_RTT ;
 int RTAX_RTTVAR ;
 int RTAX_SSTHRESH ;
 scalar_t__ TCP_CA_Open ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 int dst_confirm (struct dst_entry*) ;
 int dst_metric (struct dst_entry*,int) ;
 int dst_metric_locked (struct dst_entry*,int) ;
 unsigned long dst_metric_rtt (struct dst_entry*,int) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int max (int,int) ;
 int set_dst_metric_rtt (struct dst_entry*,int,unsigned long) ;
 scalar_t__ sysctl_tcp_nometrics_save ;
 int sysctl_tcp_reordering ;
 scalar_t__ tcp_in_initial_slowstart (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_update_metrics(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct dst_entry *dst = __sk_dst_get(sk);

 if (sysctl_tcp_nometrics_save)
  return;

 dst_confirm(dst);

 if (dst && (dst->flags & DST_HOST)) {
  const struct inet_connection_sock *icsk = inet_csk(sk);
  int m;
  unsigned long rtt;

  if (icsk->icsk_backoff || !tp->srtt) {




   if (!(dst_metric_locked(dst, RTAX_RTT)))
    dst->metrics[RTAX_RTT - 1] = 0;
   return;
  }

  rtt = dst_metric_rtt(dst, RTAX_RTT);
  m = rtt - tp->srtt;





  if (!(dst_metric_locked(dst, RTAX_RTT))) {
   if (m <= 0)
    set_dst_metric_rtt(dst, RTAX_RTT, tp->srtt);
   else
    set_dst_metric_rtt(dst, RTAX_RTT, rtt - (m >> 3));
  }

  if (!(dst_metric_locked(dst, RTAX_RTTVAR))) {
   unsigned long var;
   if (m < 0)
    m = -m;


   m >>= 1;
   if (m < tp->mdev)
    m = tp->mdev;

   var = dst_metric_rtt(dst, RTAX_RTTVAR);
   if (m >= var)
    var = m;
   else
    var -= (var - m) >> 2;

   set_dst_metric_rtt(dst, RTAX_RTTVAR, var);
  }

  if (tcp_in_initial_slowstart(tp)) {

   if (dst_metric(dst, RTAX_SSTHRESH) &&
       !dst_metric_locked(dst, RTAX_SSTHRESH) &&
       (tp->snd_cwnd >> 1) > dst_metric(dst, RTAX_SSTHRESH))
    dst->metrics[RTAX_SSTHRESH-1] = tp->snd_cwnd >> 1;
   if (!dst_metric_locked(dst, RTAX_CWND) &&
       tp->snd_cwnd > dst_metric(dst, RTAX_CWND))
    dst->metrics[RTAX_CWND - 1] = tp->snd_cwnd;
  } else if (tp->snd_cwnd > tp->snd_ssthresh &&
      icsk->icsk_ca_state == TCP_CA_Open) {

   if (!dst_metric_locked(dst, RTAX_SSTHRESH))
    dst->metrics[RTAX_SSTHRESH-1] =
     max(tp->snd_cwnd >> 1, tp->snd_ssthresh);
   if (!dst_metric_locked(dst, RTAX_CWND))
    dst->metrics[RTAX_CWND-1] = (dst_metric(dst, RTAX_CWND) + tp->snd_cwnd) >> 1;
  } else {



   if (!dst_metric_locked(dst, RTAX_CWND))
    dst->metrics[RTAX_CWND-1] = (dst_metric(dst, RTAX_CWND) + tp->snd_ssthresh) >> 1;
   if (dst_metric(dst, RTAX_SSTHRESH) &&
       !dst_metric_locked(dst, RTAX_SSTHRESH) &&
       tp->snd_ssthresh > dst_metric(dst, RTAX_SSTHRESH))
    dst->metrics[RTAX_SSTHRESH-1] = tp->snd_ssthresh;
  }

  if (!dst_metric_locked(dst, RTAX_REORDERING)) {
   if (dst_metric(dst, RTAX_REORDERING) < tp->reordering &&
       tp->reordering != sysctl_tcp_reordering)
    dst->metrics[RTAX_REORDERING-1] = tp->reordering;
  }
 }
}
