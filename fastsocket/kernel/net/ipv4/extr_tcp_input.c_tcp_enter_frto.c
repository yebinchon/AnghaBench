
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {int frto_counter; scalar_t__ snd_una; scalar_t__ high_seq; int snd_cwnd; scalar_t__ undo_marker; scalar_t__ frto_highmark; scalar_t__ snd_nxt; int retrans_out; scalar_t__ undo_retrans; int snd_ssthresh; int prior_ssthresh; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {int icsk_ca_state; TYPE_1__* icsk_ca_ops; int icsk_retransmits; } ;
struct TYPE_4__ {int sacked; } ;
struct TYPE_3__ {int (* ssthresh ) (struct sock*) ;} ;


 int CA_EVENT_FRTO ;
 int TCPCB_RETRANS ;
 int TCPCB_SACKED_RETRANS ;
 int TCPF_CA_Loss ;
 int TCPF_CA_Recovery ;
 int TCP_CA_Disorder ;
 int TCP_CA_Loss ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after (scalar_t__,scalar_t__) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int min (int,scalar_t__) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int tcp_ca_event (struct sock*,int ) ;
 int tcp_current_ssthresh (struct sock*) ;
 scalar_t__ tcp_is_sackfrto (struct tcp_sock*) ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;
 int tcp_verify_left_out (struct tcp_sock*) ;
 struct sk_buff* tcp_write_queue_head (struct sock*) ;

void tcp_enter_frto(struct sock *sk)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *skb;

 if ((!tp->frto_counter && icsk->icsk_ca_state <= TCP_CA_Disorder) ||
     tp->snd_una == tp->high_seq ||
     ((icsk->icsk_ca_state == TCP_CA_Loss || tp->frto_counter) &&
      !icsk->icsk_retransmits)) {
  tp->prior_ssthresh = tcp_current_ssthresh(sk);
  if (tp->frto_counter) {
   u32 stored_cwnd;
   stored_cwnd = tp->snd_cwnd;
   tp->snd_cwnd = 2;
   tp->snd_ssthresh = icsk->icsk_ca_ops->ssthresh(sk);
   tp->snd_cwnd = stored_cwnd;
  } else {
   tp->snd_ssthresh = icsk->icsk_ca_ops->ssthresh(sk);
  }







  tcp_ca_event(sk, CA_EVENT_FRTO);
 }

 tp->undo_marker = tp->snd_una;
 tp->undo_retrans = 0;

 skb = tcp_write_queue_head(sk);
 if (TCP_SKB_CB(skb)->sacked & TCPCB_RETRANS)
  tp->undo_marker = 0;
 if (TCP_SKB_CB(skb)->sacked & TCPCB_SACKED_RETRANS) {
  TCP_SKB_CB(skb)->sacked &= ~TCPCB_SACKED_RETRANS;
  tp->retrans_out -= tcp_skb_pcount(skb);
 }
 tcp_verify_left_out(tp);


 tp->snd_cwnd = min(tp->snd_cwnd, tcp_packets_in_flight(tp) + 1);




 if (tcp_is_sackfrto(tp) && (tp->frto_counter ||
     ((1 << icsk->icsk_ca_state) & (TCPF_CA_Recovery|TCPF_CA_Loss))) &&
     after(tp->high_seq, tp->snd_una)) {
  tp->frto_highmark = tp->high_seq;
 } else {
  tp->frto_highmark = tp->snd_nxt;
 }
 tcp_set_ca_state(sk, TCP_CA_Disorder);
 tp->high_seq = tp->snd_nxt;
 tp->frto_counter = 1;
}
