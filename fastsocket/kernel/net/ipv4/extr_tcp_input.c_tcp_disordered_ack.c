
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcphdr {int window; scalar_t__ ack; } ;
struct TYPE_4__ {int snd_wscale; scalar_t__ rcv_tsval; scalar_t__ ts_recent; } ;
struct tcp_sock {scalar_t__ rcv_nxt; scalar_t__ snd_una; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int s32 ;
struct TYPE_6__ {scalar_t__ seq; scalar_t__ ack_seq; scalar_t__ end_seq; } ;
struct TYPE_5__ {int icsk_rto; } ;


 int HZ ;
 TYPE_3__* TCP_SKB_CB (struct sk_buff const*) ;
 TYPE_2__* inet_csk (struct sock const*) ;
 int ntohs (int ) ;
 struct tcphdr* tcp_hdr (struct sk_buff const*) ;
 int tcp_may_update_window (struct tcp_sock*,scalar_t__,scalar_t__,int) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;

__attribute__((used)) static int tcp_disordered_ack(const struct sock *sk, const struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct tcphdr *th = tcp_hdr(skb);
 u32 seq = TCP_SKB_CB(skb)->seq;
 u32 ack = TCP_SKB_CB(skb)->ack_seq;

 return (
  (th->ack && seq == TCP_SKB_CB(skb)->end_seq && seq == tp->rcv_nxt) &&


  ack == tp->snd_una &&


  !tcp_may_update_window(tp, ack, seq, ntohs(th->window) << tp->rx_opt.snd_wscale) &&


  (s32)(tp->rx_opt.ts_recent - tp->rx_opt.rcv_tsval) <= (inet_csk(sk)->icsk_rto * 1024) / HZ);
}
