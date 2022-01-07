
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcphdr {int doff; scalar_t__ ack; } ;
struct TYPE_5__ {unsigned int len; scalar_t__ task; } ;
struct TYPE_4__ {scalar_t__ ts_recent; scalar_t__ rcv_tsval; scalar_t__ saw_tstamp; } ;
struct tcp_sock {int pred_flags; scalar_t__ rcv_nxt; int tcp_header_len; scalar_t__ rcv_wup; scalar_t__ copied_seq; scalar_t__ snd_una; TYPE_2__ ucopy; TYPE_1__ rx_opt; int snd_nxt; } ;
struct sock {int sk_forward_alloc; int (* sk_data_ready ) (struct sock*,int ) ;int sk_async_wait_queue; int sk_receive_queue; } ;
struct sk_buff {scalar_t__ truesize; int len; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {scalar_t__ seq; scalar_t__ ack_seq; scalar_t__ end_seq; } ;


 int FLAG_DATA ;
 int FLAG_SLOWPATH ;
 int LINUX_MIB_TCPHPHITS ;
 int LINUX_MIB_TCPHPHITSTOUSER ;
 int NET_INC_STATS_BH (int ,int ) ;
 int TASK_RUNNING ;
 int TCPOLEN_TSTAMP_ALIGNED ;
 int TCP_HP_BITS ;
 int TCP_INC_STATS_BH (int ,int ) ;
 int TCP_MIB_INERRS ;
 TYPE_3__* TCP_SKB_CB (struct sk_buff*) ;
 int __kfree_skb (struct sk_buff*) ;
 int __set_current_state (int ) ;
 int __skb_pull (struct sk_buff*,int) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int __tcp_ack_snd_check (struct sock*,int ) ;
 int after (scalar_t__,int ) ;
 scalar_t__ current ;
 int inet_csk_ack_scheduled (struct sock*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_net (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int stub1 (struct sock*,int ) ;
 scalar_t__ tcp_ack (struct sock*,struct sk_buff*,int ) ;
 int tcp_ack_snd_check (struct sock*) ;
 scalar_t__ tcp_checksum_complete_user (struct sock*,struct sk_buff*) ;
 int tcp_cleanup_rbuf (struct sock*,int ) ;
 int tcp_copy_to_iovec (struct sock*,struct sk_buff*,int) ;
 int tcp_data_queue (struct sock*,struct sk_buff*) ;
 int tcp_data_snd_check (struct sock*) ;
 scalar_t__ tcp_dma_try_early_copy (struct sock*,struct sk_buff*,int) ;
 int tcp_event_data_recv (struct sock*,struct sk_buff*) ;
 int tcp_flag_word (struct tcphdr*) ;
 int tcp_parse_aligned_timestamp (struct tcp_sock*,struct tcphdr*) ;
 int tcp_rcv_rtt_measure_ts (struct sock*,struct sk_buff*) ;
 int tcp_replace_ts_recent (struct tcp_sock*,scalar_t__) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_store_ts_recent (struct tcp_sock*) ;
 int tcp_urg (struct sock*,struct sk_buff*,struct tcphdr*) ;
 int tcp_validate_incoming (struct sock*,struct sk_buff*,struct tcphdr*,int) ;

int tcp_rcv_established(struct sock *sk, struct sk_buff *skb,
   struct tcphdr *th, unsigned len)
{
 struct tcp_sock *tp = tcp_sk(sk);
 tp->rx_opt.saw_tstamp = 0;
 if ((tcp_flag_word(th) & TCP_HP_BITS) == tp->pred_flags &&
     TCP_SKB_CB(skb)->seq == tp->rcv_nxt &&
     !after(TCP_SKB_CB(skb)->ack_seq, tp->snd_nxt)) {
  int tcp_header_len = tp->tcp_header_len;







  if (tcp_header_len == sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED) {

   if (!tcp_parse_aligned_timestamp(tp, th))
    goto slow_path;


   if ((s32)(tp->rx_opt.rcv_tsval - tp->rx_opt.ts_recent) < 0)
    goto slow_path;






  }

  if (len <= tcp_header_len) {

   if (len == tcp_header_len) {




    if (tcp_header_len ==
        (sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED) &&
        tp->rcv_nxt == tp->rcv_wup)
     tcp_store_ts_recent(tp);




    tcp_ack(sk, skb, 0);
    __kfree_skb(skb);
    tcp_data_snd_check(sk);
    return 0;
   } else {
    TCP_INC_STATS_BH(sock_net(sk), TCP_MIB_INERRS);
    goto discard;
   }
  } else {
   int eaten = 0;
   int copied_early = 0;

   if (tp->copied_seq == tp->rcv_nxt &&
       len - tcp_header_len <= tp->ucopy.len) {






    if (tp->ucopy.task == current &&
        sock_owned_by_user(sk) && !copied_early) {
     __set_current_state(TASK_RUNNING);

     if (!tcp_copy_to_iovec(sk, skb, tcp_header_len))
      eaten = 1;
    }
    if (eaten) {




     if (tcp_header_len ==
         (sizeof(struct tcphdr) +
          TCPOLEN_TSTAMP_ALIGNED) &&
         tp->rcv_nxt == tp->rcv_wup)
      tcp_store_ts_recent(tp);

     tcp_rcv_rtt_measure_ts(sk, skb);

     __skb_pull(skb, tcp_header_len);
     tp->rcv_nxt = TCP_SKB_CB(skb)->end_seq;
     NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPHPHITSTOUSER);
    }
    if (copied_early)
     tcp_cleanup_rbuf(sk, skb->len);
   }
   if (!eaten) {
    if (tcp_checksum_complete_user(sk, skb))
     goto csum_error;





    if (tcp_header_len ==
        (sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED) &&
        tp->rcv_nxt == tp->rcv_wup)
     tcp_store_ts_recent(tp);

    tcp_rcv_rtt_measure_ts(sk, skb);

    if ((int)skb->truesize > sk->sk_forward_alloc)
     goto step5;

    NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPHPHITS);


    __skb_pull(skb, tcp_header_len);
    __skb_queue_tail(&sk->sk_receive_queue, skb);
    skb_set_owner_r(skb, sk);
    tp->rcv_nxt = TCP_SKB_CB(skb)->end_seq;
   }

   tcp_event_data_recv(sk, skb);

   if (TCP_SKB_CB(skb)->ack_seq != tp->snd_una) {

    tcp_ack(sk, skb, FLAG_DATA);
    tcp_data_snd_check(sk);
    if (!inet_csk_ack_scheduled(sk))
     goto no_ack;
   }

   if (!copied_early || tp->rcv_nxt != tp->rcv_wup)
    __tcp_ack_snd_check(sk, 0);
no_ack:





   if (eaten)
    __kfree_skb(skb);
   else
    sk->sk_data_ready(sk, 0);
   return 0;
  }
 }

slow_path:
 if (len < (th->doff << 2) || tcp_checksum_complete_user(sk, skb))
  goto csum_error;





 if (!tcp_validate_incoming(sk, skb, th, 1))
  return 0;

step5:
 if (th->ack && tcp_ack(sk, skb, FLAG_SLOWPATH) < 0)
  goto discard;




 tcp_replace_ts_recent(tp, TCP_SKB_CB(skb)->seq);

 tcp_rcv_rtt_measure_ts(sk, skb);


 tcp_urg(sk, skb, th);


 tcp_data_queue(sk, skb);

 tcp_data_snd_check(sk);
 tcp_ack_snd_check(sk);
 return 0;

csum_error:
 TCP_INC_STATS_BH(sock_net(sk), TCP_MIB_INERRS);

discard:
 __kfree_skb(skb);
 return 0;
}
