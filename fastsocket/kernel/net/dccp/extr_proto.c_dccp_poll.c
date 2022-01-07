
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_state; int sk_shutdown; TYPE_1__* sk_socket; int sk_rmem_alloc; scalar_t__ sk_err; int sk_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_2__ {int flags; } ;


 int DCCPF_REQUESTING ;
 int DCCPF_RESPOND ;
 int DCCP_CLOSED ;
 int DCCP_LISTEN ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDHUP ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCK_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 scalar_t__ atomic_read (int *) ;
 unsigned int inet_csk_listen_poll (struct sock*) ;
 int set_bit (int ,int *) ;
 scalar_t__ sk_stream_min_wspace (struct sock*) ;
 scalar_t__ sk_stream_wspace (struct sock*) ;
 int sock_poll_wait (struct file*,int ,int *) ;

unsigned int dccp_poll(struct file *file, struct socket *sock,
         poll_table *wait)
{
 unsigned int mask;
 struct sock *sk = sock->sk;

 sock_poll_wait(file, sk->sk_sleep, wait);
 if (sk->sk_state == DCCP_LISTEN)
  return inet_csk_listen_poll(sk);






 mask = 0;
 if (sk->sk_err)
  mask = POLLERR;

 if (sk->sk_shutdown == SHUTDOWN_MASK || sk->sk_state == DCCP_CLOSED)
  mask |= POLLHUP;
 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= POLLIN | POLLRDNORM | POLLRDHUP;


 if ((1 << sk->sk_state) & ~(DCCPF_REQUESTING | DCCPF_RESPOND)) {
  if (atomic_read(&sk->sk_rmem_alloc) > 0)
   mask |= POLLIN | POLLRDNORM;

  if (!(sk->sk_shutdown & SEND_SHUTDOWN)) {
   if (sk_stream_wspace(sk) >= sk_stream_min_wspace(sk)) {
    mask |= POLLOUT | POLLWRNORM;
   } else {
    set_bit(SOCK_ASYNC_NOSPACE,
     &sk->sk_socket->flags);
    set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);





    if (sk_stream_wspace(sk) >= sk_stream_min_wspace(sk))
     mask |= POLLOUT | POLLWRNORM;
   }
  }
 }
 return mask;
}
