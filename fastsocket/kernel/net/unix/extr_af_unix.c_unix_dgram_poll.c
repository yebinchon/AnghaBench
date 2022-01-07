
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_type; scalar_t__ sk_state; TYPE_1__* sk_socket; int sk_receive_queue; int sk_error_queue; scalar_t__ sk_err; int * sk_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_4__ {int peer_wait; } ;
struct TYPE_3__ {int flags; } ;


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
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_SYN_SENT ;
 int set_bit (int ,int *) ;
 int skb_queue_empty (int *) ;
 int sock_poll_wait (struct file*,int *,int *) ;
 int sock_put (struct sock*) ;
 struct sock* unix_peer (struct sock*) ;
 struct sock* unix_peer_get (struct sock*) ;
 scalar_t__ unix_recvq_full (struct sock*) ;
 TYPE_2__* unix_sk (struct sock*) ;
 unsigned int unix_writable (struct sock*) ;

__attribute__((used)) static unsigned int unix_dgram_poll(struct file *file, struct socket *sock,
        poll_table *wait)
{
 struct sock *sk = sock->sk, *other;
 unsigned int mask, writable;

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


 if (sk->sk_type == SOCK_SEQPACKET) {
  if (sk->sk_state == TCP_CLOSE)
   mask |= POLLHUP;

  if (sk->sk_state == TCP_SYN_SENT)
   return mask;
 }


 writable = unix_writable(sk);
 if (writable) {
  other = unix_peer_get(sk);
  if (other) {
   if (unix_peer(other) != sk) {
    sock_poll_wait(file, &unix_sk(other)->peer_wait,
       wait);
    if (unix_recvq_full(other))
     writable = 0;
   }

   sock_put(other);
  }
 }

 if (writable)
  mask |= POLLOUT | POLLWRNORM | POLLWRBAND;
 else
  set_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);

 return mask;
}
