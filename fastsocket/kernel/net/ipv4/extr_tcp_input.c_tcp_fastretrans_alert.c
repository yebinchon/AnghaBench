
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int probe_seq_start; } ;
struct tcp_sock {scalar_t__ reordering; scalar_t__ fackets_out; scalar_t__ retrans_out; scalar_t__ undo_retrans; int prr_delivered; int prr_out; int snd_cwnd; int prior_cwnd; int snd_cwnd_cnt; int bytes_acked; int snd_ssthresh; scalar_t__ prior_ssthresh; int snd_una; int undo_marker; int snd_nxt; int high_seq; TYPE_2__ mtu_probe; scalar_t__ retrans_stamp; scalar_t__ sacked_out; int packets_out; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int probe_size; } ;
struct inet_connection_sock {int const icsk_ca_state; TYPE_3__* icsk_ca_ops; TYPE_1__ icsk_mtup; int icsk_retransmits; } ;
struct TYPE_6__ {int (* ssthresh ) (struct sock*) ;} ;


 int FLAG_DATA_ACKED ;
 int FLAG_DATA_LOST ;
 int FLAG_DATA_SACKED ;
 int FLAG_ECE ;
 int FLAG_SND_UNA_ADVANCED ;
 int LINUX_MIB_TCPLOSS ;
 int LINUX_MIB_TCPRENORECOVERY ;
 int LINUX_MIB_TCPSACKRECOVERY ;
 int NET_INC_STATS_BH (int ,int) ;

 int const TCP_CA_Disorder ;

 int const TCP_CA_Open ;

 int TCP_ECN_queue_cwr (struct tcp_sock*) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ before (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_add_reno_sack (struct sock*) ;
 scalar_t__ tcp_check_sack_reneging (struct sock*,int) ;
 int tcp_complete_cwr (struct sock*) ;
 scalar_t__ tcp_current_ssthresh (struct sock*) ;
 scalar_t__ tcp_fackets_out (struct tcp_sock*) ;
 scalar_t__ tcp_head_timedout (struct sock*) ;
 scalar_t__ tcp_is_fack (struct tcp_sock*) ;
 int tcp_is_reno (struct tcp_sock*) ;
 int tcp_mark_head_lost (struct sock*,scalar_t__) ;
 int tcp_moderate_cwnd (struct tcp_sock*) ;
 int tcp_mtup_probe_failed (struct sock*) ;
 int tcp_reset_reno_sack (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,int const) ;
 int tcp_simple_retransmit (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_to_recover (struct sock*) ;
 int tcp_try_to_open (struct sock*,int) ;
 int tcp_try_undo_dsack (struct sock*) ;
 int tcp_try_undo_loss (struct sock*) ;
 int tcp_try_undo_partial (struct sock*,int) ;
 int tcp_try_undo_recovery (struct sock*) ;
 int tcp_update_cwnd_in_recovery (struct sock*,int,int,int) ;
 int tcp_update_scoreboard (struct sock*,int) ;
 int tcp_verify_left_out (struct tcp_sock*) ;
 int tcp_xmit_retransmit_queue (struct sock*) ;

__attribute__((used)) static void tcp_fastretrans_alert(struct sock *sk, int pkts_acked,
      int newly_acked_sacked, bool is_dupack,
      int flag)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 int do_lost = is_dupack || ((flag & FLAG_DATA_SACKED) &&
        (tcp_fackets_out(tp) > tp->reordering));
 int fast_rexmit = 0, mib_idx;

 if (WARN_ON(!tp->packets_out && tp->sacked_out))
  tp->sacked_out = 0;
 if (WARN_ON(!tp->sacked_out && tp->fackets_out))
  tp->fackets_out = 0;



 if (flag & FLAG_ECE)
  tp->prior_ssthresh = 0;


 if (tcp_check_sack_reneging(sk, flag))
  return;


 if (tcp_is_fack(tp) && (flag & FLAG_DATA_LOST) &&
     before(tp->snd_una, tp->high_seq) &&
     icsk->icsk_ca_state != TCP_CA_Open &&
     tp->fackets_out > tp->reordering) {
  tcp_mark_head_lost(sk, tp->fackets_out - tp->reordering);
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPLOSS);
 }


 tcp_verify_left_out(tp);



 if (icsk->icsk_ca_state == TCP_CA_Open) {
  WARN_ON(tp->retrans_out != 0);
  tp->retrans_stamp = 0;
 } else if (!before(tp->snd_una, tp->high_seq)) {
  switch (icsk->icsk_ca_state) {
  case 129:
   icsk->icsk_retransmits = 0;
   if (tcp_try_undo_recovery(sk))
    return;
   break;

  case 130:


   if (tp->snd_una != tp->high_seq) {
    tcp_complete_cwr(sk);
    tcp_set_ca_state(sk, TCP_CA_Open);
   }
   break;

  case 128:
   if (tcp_is_reno(tp))
    tcp_reset_reno_sack(tp);
   if (tcp_try_undo_recovery(sk))
    return;
   tcp_complete_cwr(sk);
   break;
  }
 }


 switch (icsk->icsk_ca_state) {
 case 128:
  if (!(flag & FLAG_SND_UNA_ADVANCED)) {
   if (tcp_is_reno(tp) && is_dupack)
    tcp_add_reno_sack(sk);
  } else
   do_lost = tcp_try_undo_partial(sk, pkts_acked);
  break;
 case 129:
  if (flag & FLAG_DATA_ACKED)
   icsk->icsk_retransmits = 0;
  if (tcp_is_reno(tp) && flag & FLAG_SND_UNA_ADVANCED)
   tcp_reset_reno_sack(tp);
  if (!tcp_try_undo_loss(sk)) {
   tcp_moderate_cwnd(tp);
   tcp_xmit_retransmit_queue(sk);
   return;
  }
  if (icsk->icsk_ca_state != TCP_CA_Open)
   return;

 default:
  if (tcp_is_reno(tp)) {
   if (flag & FLAG_SND_UNA_ADVANCED)
    tcp_reset_reno_sack(tp);
   if (is_dupack)
    tcp_add_reno_sack(sk);
  }

  if (icsk->icsk_ca_state <= TCP_CA_Disorder)
   tcp_try_undo_dsack(sk);

  if (!tcp_time_to_recover(sk)) {
   tcp_try_to_open(sk, flag);
   return;
  }


  if (icsk->icsk_ca_state < 130 &&
      icsk->icsk_mtup.probe_size &&
      tp->snd_una == tp->mtu_probe.probe_seq_start) {
   tcp_mtup_probe_failed(sk);

   tp->snd_cwnd++;
   tcp_simple_retransmit(sk);
   return;
  }



  if (tcp_is_reno(tp))
   mib_idx = LINUX_MIB_TCPRENORECOVERY;
  else
   mib_idx = LINUX_MIB_TCPSACKRECOVERY;

  NET_INC_STATS_BH(sock_net(sk), mib_idx);

  tp->high_seq = tp->snd_nxt;
  tp->prior_ssthresh = 0;
  tp->undo_marker = tp->snd_una;
  tp->undo_retrans = tp->retrans_out;

  if (icsk->icsk_ca_state < 130) {
   if (!(flag & FLAG_ECE))
    tp->prior_ssthresh = tcp_current_ssthresh(sk);
   tp->snd_ssthresh = icsk->icsk_ca_ops->ssthresh(sk);
   TCP_ECN_queue_cwr(tp);
  }

  tp->bytes_acked = 0;
  tp->snd_cwnd_cnt = 0;
  tp->prior_cwnd = tp->snd_cwnd;
  tp->prr_delivered = 0;
  tp->prr_out = 0;
  tcp_set_ca_state(sk, 128);
  fast_rexmit = 1;
 }

 if (do_lost || (tcp_is_fack(tp) && tcp_head_timedout(sk)))
  tcp_update_scoreboard(sk, fast_rexmit);
 tp->prr_delivered += newly_acked_sacked;
 tcp_update_cwnd_in_recovery(sk, newly_acked_sacked, fast_rexmit, flag);
 tcp_xmit_retransmit_queue(sk);
}
