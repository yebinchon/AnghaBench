
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_receive_queue; scalar_t__ sk_err; int sk_sleep; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ traffic_class; } ;
struct TYPE_4__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_2__ qos; int flags; } ;
typedef int poll_table ;


 scalar_t__ ATM_NONE ;
 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_CLOSE ;
 int ATM_VF_RELEASED ;
 int ATM_VF_WAITING ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRBAND ;
 unsigned int POLLWRNORM ;
 scalar_t__ SS_CONNECTING ;
 int skb_queue_empty (int *) ;
 int sock_poll_wait (struct file*,int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ vcc_writable (struct sock*) ;

unsigned int vcc_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct atm_vcc *vcc;
 unsigned int mask;

 sock_poll_wait(file, sk->sk_sleep, wait);
 mask = 0;

 vcc = ATM_SD(sock);


 if (sk->sk_err)
  mask = POLLERR;

 if (test_bit(ATM_VF_RELEASED, &vcc->flags) ||
     test_bit(ATM_VF_CLOSE, &vcc->flags))
  mask |= POLLHUP;


 if (!skb_queue_empty(&sk->sk_receive_queue))
  mask |= POLLIN | POLLRDNORM;


 if (sock->state == SS_CONNECTING &&
     test_bit(ATM_VF_WAITING, &vcc->flags))
  return mask;

 if (vcc->qos.txtp.traffic_class != ATM_NONE &&
     vcc_writable(sk))
  mask |= POLLOUT | POLLWRNORM | POLLWRBAND;

 return mask;
}
