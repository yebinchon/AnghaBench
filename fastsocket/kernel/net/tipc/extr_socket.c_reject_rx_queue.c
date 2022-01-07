
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 int TIPC_ERR_NO_PORT ;
 struct sk_buff* __skb_dequeue (int *) ;
 int atomic_dec (int *) ;
 int tipc_queue_size ;
 int tipc_reject_msg (struct sk_buff*,int ) ;

__attribute__((used)) static void reject_rx_queue(struct sock *sk)
{
 struct sk_buff *buf;

 while ((buf = __skb_dequeue(&sk->sk_receive_queue))) {
  tipc_reject_msg(buf, TIPC_ERR_NO_PORT);
  atomic_dec(&tipc_queue_size);
 }
}
