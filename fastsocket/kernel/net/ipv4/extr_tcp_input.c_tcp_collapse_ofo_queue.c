
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {int out_of_order_queue; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int end_seq; int seq; } ;


 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after (int ,int ) ;
 scalar_t__ before (int ,int ) ;
 struct sk_buff* skb_peek (int *) ;
 int skb_queue_is_last (int *,struct sk_buff*) ;
 struct sk_buff* skb_queue_next (int *,struct sk_buff*) ;
 int tcp_collapse (struct sock*,int *,struct sk_buff*,struct sk_buff*,int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_collapse_ofo_queue(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *skb = skb_peek(&tp->out_of_order_queue);
 struct sk_buff *head;
 u32 start, end;

 if (skb == ((void*)0))
  return;

 start = TCP_SKB_CB(skb)->seq;
 end = TCP_SKB_CB(skb)->end_seq;
 head = skb;

 for (;;) {
  struct sk_buff *next = ((void*)0);

  if (!skb_queue_is_last(&tp->out_of_order_queue, skb))
   next = skb_queue_next(&tp->out_of_order_queue, skb);
  skb = next;



  if (!skb ||
      after(TCP_SKB_CB(skb)->seq, end) ||
      before(TCP_SKB_CB(skb)->end_seq, start)) {
   tcp_collapse(sk, &tp->out_of_order_queue,
         head, skb, start, end);
   head = skb;
   if (!skb)
    break;

   start = TCP_SKB_CB(skb)->seq;
   end = TCP_SKB_CB(skb)->end_seq;
  } else {
   if (before(TCP_SKB_CB(skb)->seq, start))
    start = TCP_SKB_CB(skb)->seq;
   if (after(TCP_SKB_CB(skb)->end_seq, end))
    end = TCP_SKB_CB(skb)->end_seq;
  }
 }
}
