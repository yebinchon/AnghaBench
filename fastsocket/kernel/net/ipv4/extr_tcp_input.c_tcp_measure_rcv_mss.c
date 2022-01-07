
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct TYPE_4__ {unsigned int last_seg_size; unsigned int rcv_mss; int pending; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;
struct TYPE_6__ {scalar_t__ gso_size; } ;
struct TYPE_5__ {scalar_t__ tcp_header_len; } ;


 int ICSK_ACK_PUSHED ;
 int ICSK_ACK_PUSHED2 ;
 int TCP_MIN_MSS ;
 int TCP_MIN_RCVMSS ;
 int TCP_REMNANT ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 TYPE_3__* skb_shinfo (struct sk_buff const*) ;
 scalar_t__ skb_transport_header (struct sk_buff const*) ;
 int tcp_flag_word (int ) ;
 int tcp_hdr (struct sk_buff const*) ;
 TYPE_2__* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_measure_rcv_mss(struct sock *sk, const struct sk_buff *skb)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 const unsigned int lss = icsk->icsk_ack.last_seg_size;
 unsigned int len;

 icsk->icsk_ack.last_seg_size = 0;




 len = skb_shinfo(skb)->gso_size ? : skb->len;
 if (len >= icsk->icsk_ack.rcv_mss) {
  icsk->icsk_ack.rcv_mss = len;
 } else {





  len += skb->data - skb_transport_header(skb);
  if (len >= TCP_MIN_RCVMSS + sizeof(struct tcphdr) ||





      (len >= TCP_MIN_MSS + sizeof(struct tcphdr) &&
       !(tcp_flag_word(tcp_hdr(skb)) & TCP_REMNANT))) {




   len -= tcp_sk(sk)->tcp_header_len;
   icsk->icsk_ack.last_seg_size = len;
   if (len == lss) {
    icsk->icsk_ack.rcv_mss = len;
    return;
   }
  }
  if (icsk->icsk_ack.pending & ICSK_ACK_PUSHED)
   icsk->icsk_ack.pending |= ICSK_ACK_PUSHED2;
  icsk->icsk_ack.pending |= ICSK_ACK_PUSHED;
 }
}
