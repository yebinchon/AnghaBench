
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int sk_sleep; } ;


 int BT_DBG (char*,struct sock*) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINPROGRESS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 unsigned long schedule_timeout (unsigned long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (unsigned long) ;
 int wait ;

int bt_sock_wait_state(struct sock *sk, int state, unsigned long timeo)
{
 DECLARE_WAITQUEUE(wait, current);
 int err = 0;

 BT_DBG("sk %p", sk);

 add_wait_queue(sk->sk_sleep, &wait);
 while (sk->sk_state != state) {
  set_current_state(TASK_INTERRUPTIBLE);

  if (!timeo) {
   err = -EINPROGRESS;
   break;
  }

  if (signal_pending(current)) {
   err = sock_intr_errno(timeo);
   break;
  }

  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock(sk);

  err = sock_error(sk);
  if (err)
   break;
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(sk->sk_sleep, &wait);
 return err;
}
