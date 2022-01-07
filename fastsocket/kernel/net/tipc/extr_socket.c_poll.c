
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_receive_queue; int sk_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 scalar_t__ SS_DISCONNECTING ;
 scalar_t__ SS_UNCONNECTED ;
 int poll_wait (struct file*,int ,int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static unsigned int poll(struct file *file, struct socket *sock,
    poll_table *wait)
{
 struct sock *sk = sock->sk;
 u32 mask;

 poll_wait(file, sk->sk_sleep, wait);

 if (!skb_queue_empty(&sk->sk_receive_queue) ||
     (sock->state == SS_UNCONNECTED) ||
     (sock->state == SS_DISCONNECTING))
  mask = (POLLRDNORM | POLLIN);
 else
  mask = 0;

 if (sock->state == SS_DISCONNECTING)
  mask |= POLLHUP;
 else
  mask |= POLLOUT;

 return mask;
}
