
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 int atomic_dec (int *) ;
 int buf_discard (struct sk_buff*) ;
 int tipc_queue_size ;

__attribute__((used)) static void discard_rx_queue(struct sock *sk)
{
 struct sk_buff *buf;

 while ((buf = __skb_dequeue(&sk->sk_receive_queue))) {
  atomic_dec(&tipc_queue_size);
  buf_discard(buf);
 }
}
