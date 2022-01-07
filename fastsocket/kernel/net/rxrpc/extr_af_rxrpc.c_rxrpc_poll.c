
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_receive_queue; int sk_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 scalar_t__ rxrpc_writable (struct sock*) ;
 int skb_queue_empty (int *) ;
 int sock_poll_wait (struct file*,int ,int *) ;

__attribute__((used)) static unsigned int rxrpc_poll(struct file *file, struct socket *sock,
          poll_table *wait)
{
 unsigned int mask;
 struct sock *sk = sock->sk;

 sock_poll_wait(file, sk->sk_sleep, wait);
 mask = 0;



 if (!skb_queue_empty(&sk->sk_receive_queue))
  mask |= POLLIN | POLLRDNORM;




 if (rxrpc_writable(sk))
  mask |= POLLOUT | POLLWRNORM;

 return mask;
}
