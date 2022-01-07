
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_sock {int ecn_flags; int snd_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_6__ {int seq; } ;
struct TYPE_5__ {int gso_type; } ;
struct TYPE_4__ {int cwr; int ece; } ;


 int INET_ECN_dontxmit (struct sock*) ;
 int INET_ECN_xmit (struct sock*) ;
 int SKB_GSO_TCP_ECN ;
 int TCP_ECN_DEMAND_CWR ;
 int TCP_ECN_OK ;
 int TCP_ECN_QUEUE_CWR ;
 TYPE_3__* TCP_SKB_CB (struct sk_buff*) ;
 int before (int ,int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline void TCP_ECN_send(struct sock *sk, struct sk_buff *skb,
    int tcp_header_len)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tp->ecn_flags & TCP_ECN_OK) {

  if (skb->len != tcp_header_len &&
      !before(TCP_SKB_CB(skb)->seq, tp->snd_nxt)) {
   INET_ECN_xmit(sk);
   if (tp->ecn_flags & TCP_ECN_QUEUE_CWR) {
    tp->ecn_flags &= ~TCP_ECN_QUEUE_CWR;
    tcp_hdr(skb)->cwr = 1;
    skb_shinfo(skb)->gso_type |= SKB_GSO_TCP_ECN;
   }
  } else {

   INET_ECN_dontxmit(sk);
  }
  if (tp->ecn_flags & TCP_ECN_DEMAND_CWR)
   tcp_hdr(skb)->ece = 1;
 }
}
