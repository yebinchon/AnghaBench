
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; TYPE_1__* sk_socket; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; int sk_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_2__ {int flags; } ;


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
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_SYN_SENT ;
 scalar_t__ connection_based (struct sock*) ;
 int set_bit (int ,int *) ;
 int skb_queue_empty (int *) ;
 int sock_poll_wait (struct file*,int ,int *) ;
 scalar_t__ sock_writeable (struct sock*) ;

unsigned int datagram_poll(struct file *file, struct socket *sock,
      poll_table *wait)
{
 struct sock *sk = sock->sk;
 unsigned int mask;

 sock_poll_wait(file, sk->sk_sleep, wait);
 mask = 0;


 if (sk->sk_err || !skb_queue_empty(&sk->sk_error_queue))
  mask |= POLLERR;
 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= POLLRDHUP;
 if (sk->sk_shutdown == SHUTDOWN_MASK)
  mask |= POLLHUP;


 if (!skb_queue_empty(&sk->sk_receive_queue) ||
     (sk->sk_shutdown & RCV_SHUTDOWN))
  mask |= POLLIN | POLLRDNORM;


 if (connection_based(sk)) {
  if (sk->sk_state == TCP_CLOSE)
   mask |= POLLHUP;

  if (sk->sk_state == TCP_SYN_SENT)
   return mask;
 }


 if (sock_writeable(sk))
  mask |= POLLOUT | POLLWRNORM | POLLWRBAND;
 else
  set_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);

 return mask;
}
