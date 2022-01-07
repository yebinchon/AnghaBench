
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; TYPE_2__* sk_socket; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; int sk_sleep; } ;
struct sctp_sock {TYPE_1__* ep; } ;
struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int asocs; } ;


 int CLOSED ;
 int LISTENING ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDHUP ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCK_ASYNC_NOSPACE ;
 int TCP ;
 int UDP ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int ,int *) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 scalar_t__ sctp_sstate (struct sock*,int ) ;
 scalar_t__ sctp_style (struct sock*,int ) ;
 scalar_t__ sctp_writeable (struct sock*) ;
 int set_bit (int ,int *) ;
 int skb_queue_empty (int *) ;

unsigned int sctp_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct sctp_sock *sp = sctp_sk(sk);
 unsigned int mask;

 poll_wait(file, sk->sk_sleep, wait);




 if (sctp_style(sk, TCP) && sctp_sstate(sk, LISTENING))
  return (!list_empty(&sp->ep->asocs)) ?
   (POLLIN | POLLRDNORM) : 0;

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


 if (!sctp_style(sk, UDP) && sctp_sstate(sk, CLOSED))
  return mask;


 if (sctp_writeable(sk)) {
  mask |= POLLOUT | POLLWRNORM;
 } else {
  set_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
  if (sctp_writeable(sk))
   mask |= POLLOUT | POLLWRNORM;
 }
 return mask;
}
