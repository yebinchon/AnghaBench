
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_socket; int sk_sleep; } ;
struct dn_scp {scalar_t__ state; int segsize_loc; } ;
typedef int gfp_t ;
struct TYPE_2__ {int state; } ;


 int DEFINE_WAIT (int ) ;
 scalar_t__ DN_CC ;
 scalar_t__ DN_CR ;
 scalar_t__ DN_RUN ;
 struct dn_scp* DN_SK (struct sock*) ;
 int EAGAIN ;
 int EINVAL ;
 int RTAX_ADVMSS ;
 int SS_CONNECTED ;
 int SS_UNCONNECTED ;
 int TASK_INTERRUPTIBLE ;
 int __sk_dst_get (struct sock*) ;
 int current ;
 int dn_send_conn_conf (struct sock*,int ) ;
 int dst_metric (int ,int ) ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static int dn_confirm_accept(struct sock *sk, long *timeo, gfp_t allocation)
{
 struct dn_scp *scp = DN_SK(sk);
 DEFINE_WAIT(wait);
 int err;

 if (scp->state != DN_CR)
  return -EINVAL;

 scp->state = DN_CC;
 scp->segsize_loc = dst_metric(__sk_dst_get(sk), RTAX_ADVMSS);
 dn_send_conn_conf(sk, allocation);

 prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
 for(;;) {
  release_sock(sk);
  if (scp->state == DN_CC)
   *timeo = schedule_timeout(*timeo);
  lock_sock(sk);
  err = 0;
  if (scp->state == DN_RUN)
   break;
  err = sock_error(sk);
  if (err)
   break;
  err = sock_intr_errno(*timeo);
  if (signal_pending(current))
   break;
  err = -EAGAIN;
  if (!*timeo)
   break;
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
 }
 finish_wait(sk->sk_sleep, &wait);
 if (err == 0) {
  sk->sk_socket->state = SS_CONNECTED;
 } else if (scp->state != DN_CC) {
  sk->sk_socket->state = SS_UNCONNECTED;
 }
 return err;
}
