
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;


 int __skb_dequeue (int *) ;
 int atomic_dec (int *) ;
 int buf_discard (int ) ;
 int tipc_queue_size ;

__attribute__((used)) static void advance_rx_queue(struct sock *sk)
{
 buf_discard(__skb_dequeue(&sk->sk_receive_queue));
 atomic_dec(&tipc_queue_size);
}
