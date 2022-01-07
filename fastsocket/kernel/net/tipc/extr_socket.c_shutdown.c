
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_port {int ref; } ;
struct socket {int state; struct sock* sk; } ;
struct sock {int sk_sleep; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int ENOTCONN ;
 int SHUT_RDWR ;



 int TIPC_CONN_SHUTDOWN ;
 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int atomic_dec (int *) ;
 int buf_discard (struct sk_buff*) ;
 int buf_msg (struct sk_buff*) ;
 int discard_rx_queue (struct sock*) ;
 int lock_sock (struct sock*) ;
 int msg_data (int ) ;
 int release_sock (struct sock*) ;
 int tipc_disconnect (int ) ;
 int tipc_queue_size ;
 int tipc_reject_msg (struct sk_buff*,int ) ;
 int tipc_shutdown (int ) ;
 struct tipc_port* tipc_sk_port (struct sock*) ;
 int waitqueue_active (int ) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static int shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 struct tipc_port *tport = tipc_sk_port(sk);
 struct sk_buff *buf;
 int res;

 if (how != SHUT_RDWR)
  return -EINVAL;

 lock_sock(sk);

 switch (sock->state) {
 case 129:
 case 130:


restart:
  buf = __skb_dequeue(&sk->sk_receive_queue);
  if (buf) {
   atomic_dec(&tipc_queue_size);
   if (TIPC_SKB_CB(buf)->handle != msg_data(buf_msg(buf))) {
    buf_discard(buf);
    goto restart;
   }
   tipc_disconnect(tport->ref);
   tipc_reject_msg(buf, TIPC_CONN_SHUTDOWN);
  } else {
   tipc_shutdown(tport->ref);
  }

  sock->state = 128;



 case 128:



  discard_rx_queue(sk);
  if (waitqueue_active(sk->sk_sleep))
   wake_up_interruptible(sk->sk_sleep);
  res = 0;
  break;

 default:
  res = -ENOTCONN;
 }

 release_sock(sk);
 return res;
}
