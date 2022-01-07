
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; scalar_t__ sk_type; scalar_t__ sk_state; int sk_receive_queue; scalar_t__ sk_err; int sk_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;


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
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ TCP_CLOSE ;
 int skb_queue_empty (int *) ;
 int sock_poll_wait (struct file*,int ,int *) ;
 scalar_t__ unix_writable (struct sock*) ;

__attribute__((used)) static unsigned int unix_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 struct sock *sk = sock->sk;
 unsigned int mask;

 sock_poll_wait(file, sk->sk_sleep, wait);
 mask = 0;


 if (sk->sk_err)
  mask |= POLLERR;
 if (sk->sk_shutdown == SHUTDOWN_MASK)
  mask |= POLLHUP;
 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= POLLRDHUP;


 if (!skb_queue_empty(&sk->sk_receive_queue) ||
     (sk->sk_shutdown & RCV_SHUTDOWN))
  mask |= POLLIN | POLLRDNORM;


 if ((sk->sk_type == SOCK_STREAM || sk->sk_type == SOCK_SEQPACKET) &&
     sk->sk_state == TCP_CLOSE)
  mask |= POLLHUP;





 if (unix_writable(sk))
  mask |= POLLOUT | POLLWRNORM | POLLWRBAND;

 return mask;
}
