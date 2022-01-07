
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcphdr {int seq; int urg_ptr; } ;
struct tcp_sock {scalar_t__ copied_seq; scalar_t__ rcv_nxt; scalar_t__ urg_seq; scalar_t__ pred_flags; scalar_t__ urg_data; } ;
struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ end_seq; } ;


 int SOCK_URGINLINE ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ TCP_URG_NOTYET ;
 int __kfree_skb (struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,int *) ;
 scalar_t__ after (scalar_t__,scalar_t__) ;
 scalar_t__ before (scalar_t__,scalar_t__) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int sk_send_sigurg (struct sock*) ;
 struct sk_buff* skb_peek (int *) ;
 int sock_flag (struct sock*,int ) ;
 int sysctl_tcp_stdurg ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_check_urg(struct sock *sk, struct tcphdr *th)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 ptr = ntohs(th->urg_ptr);

 if (ptr && !sysctl_tcp_stdurg)
  ptr--;
 ptr += ntohl(th->seq);


 if (after(tp->copied_seq, ptr))
  return;
 if (before(ptr, tp->rcv_nxt))
  return;


 if (tp->urg_data && !after(ptr, tp->urg_seq))
  return;


 sk_send_sigurg(sk);
 if (tp->urg_seq == tp->copied_seq && tp->urg_data &&
     !sock_flag(sk, SOCK_URGINLINE) && tp->copied_seq != tp->rcv_nxt) {
  struct sk_buff *skb = skb_peek(&sk->sk_receive_queue);
  tp->copied_seq++;
  if (skb && !before(tp->copied_seq, TCP_SKB_CB(skb)->end_seq)) {
   __skb_unlink(skb, &sk->sk_receive_queue);
   __kfree_skb(skb);
  }
 }

 tp->urg_data = TCP_URG_NOTYET;
 tp->urg_seq = ptr;


 tp->pred_flags = 0;
}
