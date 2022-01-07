
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; TYPE_1__* sk_socket; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; int sk_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECT2 ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 scalar_t__ BT_LISTEN ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDHUP ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRBAND ;
 unsigned int POLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCK_ASYNC_NOSPACE ;
 unsigned int bt_accept_poll (struct sock*) ;
 int poll_wait (struct file*,int ,int *) ;
 int set_bit (int ,int *) ;
 int skb_queue_empty (int *) ;
 scalar_t__ sock_writeable (struct sock*) ;

unsigned int bt_sock_poll(struct file * file, struct socket *sock, poll_table *wait)
{
 struct sock *sk = sock->sk;
 unsigned int mask = 0;

 BT_DBG("sock %p, sk %p", sock, sk);

 poll_wait(file, sk->sk_sleep, wait);

 if (sk->sk_state == BT_LISTEN)
  return bt_accept_poll(sk);

 if (sk->sk_err || !skb_queue_empty(&sk->sk_error_queue))
  mask |= POLLERR;

 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= POLLRDHUP;

 if (sk->sk_shutdown == SHUTDOWN_MASK)
  mask |= POLLHUP;

 if (!skb_queue_empty(&sk->sk_receive_queue) ||
   (sk->sk_shutdown & RCV_SHUTDOWN))
  mask |= POLLIN | POLLRDNORM;

 if (sk->sk_state == BT_CLOSED)
  mask |= POLLHUP;

 if (sk->sk_state == BT_CONNECT ||
   sk->sk_state == BT_CONNECT2 ||
   sk->sk_state == BT_CONFIG)
  return mask;

 if (sock_writeable(sk))
  mask |= POLLOUT | POLLWRNORM | POLLWRBAND;
 else
  set_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);

 return mask;
}
