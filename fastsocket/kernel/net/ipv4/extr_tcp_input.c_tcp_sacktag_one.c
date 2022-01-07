
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tcp_sock {int lost_out; int retrans_out; int sacked_out; int lost_cnt_hint; int fackets_out; struct sk_buff* lost_skb_hint; scalar_t__ frto_highmark; scalar_t__ snd_una; scalar_t__ undo_retrans; scalar_t__ undo_marker; } ;
struct tcp_sacktag_state {int fack_count; int flag; void* reord; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; int seq; int end_seq; } ;


 int FLAG_DATA_SACKED ;
 int FLAG_ONLY_ORIG_SACKED ;
 int TCPCB_LOST ;
 int TCPCB_RETRANS ;
 int TCPCB_SACKED_ACKED ;
 int TCPCB_SACKED_RETRANS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after (int ,scalar_t__) ;
 scalar_t__ before (int ,int ) ;
 void* min (int,void*) ;
 int tcp_highest_sack_seq (struct tcp_sock*) ;
 int tcp_is_fack (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u8 tcp_sacktag_one(struct sk_buff *skb, struct sock *sk,
     struct tcp_sacktag_state *state,
     int dup_sack, int pcount)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u8 sacked = TCP_SKB_CB(skb)->sacked;
 int fack_count = state->fack_count;


 if (dup_sack && (sacked & TCPCB_RETRANS)) {
  if (tp->undo_marker && tp->undo_retrans &&
      after(TCP_SKB_CB(skb)->end_seq, tp->undo_marker))
   tp->undo_retrans--;
  if (sacked & TCPCB_SACKED_ACKED)
   state->reord = min(fack_count, state->reord);
 }


 if (!after(TCP_SKB_CB(skb)->end_seq, tp->snd_una))
  return sacked;

 if (!(sacked & TCPCB_SACKED_ACKED)) {
  if (sacked & TCPCB_SACKED_RETRANS) {




   if (sacked & TCPCB_LOST) {
    sacked &= ~(TCPCB_LOST|TCPCB_SACKED_RETRANS);
    tp->lost_out -= pcount;
    tp->retrans_out -= pcount;
   }
  } else {
   if (!(sacked & TCPCB_RETRANS)) {



    if (before(TCP_SKB_CB(skb)->seq,
        tcp_highest_sack_seq(tp)))
     state->reord = min(fack_count,
          state->reord);


    if (!after(TCP_SKB_CB(skb)->end_seq, tp->frto_highmark))
     state->flag |= FLAG_ONLY_ORIG_SACKED;
   }

   if (sacked & TCPCB_LOST) {
    sacked &= ~TCPCB_LOST;
    tp->lost_out -= pcount;
   }
  }

  sacked |= TCPCB_SACKED_ACKED;
  state->flag |= FLAG_DATA_SACKED;
  tp->sacked_out += pcount;

  fack_count += pcount;


  if (!tcp_is_fack(tp) && (tp->lost_skb_hint != ((void*)0)) &&
      before(TCP_SKB_CB(skb)->seq,
      TCP_SKB_CB(tp->lost_skb_hint)->seq))
   tp->lost_cnt_hint += pcount;

  if (fack_count > tp->fackets_out)
   tp->fackets_out = fack_count;
 }





 if (dup_sack && (sacked & TCPCB_SACKED_RETRANS)) {
  sacked &= ~TCPCB_SACKED_RETRANS;
  tp->retrans_out -= pcount;
 }

 return sacked;
}
