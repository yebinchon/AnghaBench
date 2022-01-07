
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_port {int ref; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ handle; } ;


 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 scalar_t__ SS_DISCONNECTING ;
 int TIPC_ERR_NO_PORT ;
 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int atomic_dec (int *) ;
 int buf_discard (struct sk_buff*) ;
 int buf_msg (struct sk_buff*) ;
 int discard_rx_queue (struct sock*) ;
 int lock_sock (struct sock*) ;
 scalar_t__ msg_data (int ) ;
 int release_sock (struct sock*) ;
 int sock_put (struct sock*) ;
 int tipc_deleteport (int ) ;
 int tipc_disconnect (int ) ;
 int tipc_queue_size ;
 int tipc_reject_msg (struct sk_buff*,int ) ;
 struct tipc_port* tipc_sk_port (struct sock*) ;
 int tipc_user_count ;

__attribute__((used)) static int release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct tipc_port *tport;
 struct sk_buff *buf;
 int res;






 if (sk == ((void*)0))
  return 0;

 tport = tipc_sk_port(sk);
 lock_sock(sk);






 while (sock->state != SS_DISCONNECTING) {
  buf = __skb_dequeue(&sk->sk_receive_queue);
  if (buf == ((void*)0))
   break;
  atomic_dec(&tipc_queue_size);
  if (TIPC_SKB_CB(buf)->handle != msg_data(buf_msg(buf)))
   buf_discard(buf);
  else {
   if ((sock->state == SS_CONNECTING) ||
       (sock->state == SS_CONNECTED)) {
    sock->state = SS_DISCONNECTING;
    tipc_disconnect(tport->ref);
   }
   tipc_reject_msg(buf, TIPC_ERR_NO_PORT);
  }
 }






 res = tipc_deleteport(tport->ref);



 discard_rx_queue(sk);



 sock->state = SS_DISCONNECTING;
 release_sock(sk);

 sock_put(sk);
 sock->sk = ((void*)0);

 atomic_dec(&tipc_user_count);
 return res;
}
