
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ undo_retrans; scalar_t__ undo_marker; } ;
struct tcp_sack_block_wire {int start_seq; int end_seq; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ ack_seq; } ;


 int LINUX_MIB_TCPDSACKOFORECV ;
 int LINUX_MIB_TCPDSACKRECV ;
 int NET_INC_STATS_BH (int ,int ) ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after (scalar_t__,scalar_t__) ;
 scalar_t__ before (scalar_t__,scalar_t__) ;
 scalar_t__ get_unaligned_be32 (int *) ;
 int sock_net (struct sock*) ;
 int tcp_dsack_seen (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static int tcp_check_dsack(struct sock *sk, struct sk_buff *ack_skb,
      struct tcp_sack_block_wire *sp, int num_sacks,
      u32 prior_snd_una)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 start_seq_0 = get_unaligned_be32(&sp[0].start_seq);
 u32 end_seq_0 = get_unaligned_be32(&sp[0].end_seq);
 int dup_sack = 0;

 if (before(start_seq_0, TCP_SKB_CB(ack_skb)->ack_seq)) {
  dup_sack = 1;
  tcp_dsack_seen(tp);
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPDSACKRECV);
 } else if (num_sacks > 1) {
  u32 end_seq_1 = get_unaligned_be32(&sp[1].end_seq);
  u32 start_seq_1 = get_unaligned_be32(&sp[1].start_seq);

  if (!after(end_seq_0, end_seq_1) &&
      !before(start_seq_0, start_seq_1)) {
   dup_sack = 1;
   tcp_dsack_seen(tp);
   NET_INC_STATS_BH(sock_net(sk),
     LINUX_MIB_TCPDSACKOFORECV);
  }
 }


 if (dup_sack && tp->undo_marker && tp->undo_retrans &&
     !after(end_seq_0, prior_snd_una) &&
     after(end_seq_0, tp->undo_marker))
  tp->undo_retrans--;

 return dup_sack;
}
