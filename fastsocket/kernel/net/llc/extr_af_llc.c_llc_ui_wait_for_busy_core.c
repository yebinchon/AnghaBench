
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; int sk_sleep; } ;
struct llc_sock {int p_flag; int remote_busy_flag; int state; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int RCV_SHUTDOWN ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 int llc_data_accept_state (int ) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int) ;
 int wait ;

__attribute__((used)) static int llc_ui_wait_for_busy_core(struct sock *sk, long timeout)
{
 DEFINE_WAIT(wait);
 struct llc_sock *llc = llc_sk(sk);
 int rc;

 while (1) {
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
  rc = 0;
  if (sk_wait_event(sk, &timeout,
      (sk->sk_shutdown & RCV_SHUTDOWN) ||
      (!llc_data_accept_state(llc->state) &&
       !llc->remote_busy_flag &&
       !llc->p_flag)))
   break;
  rc = -ERESTARTSYS;
  if (signal_pending(current))
   break;
  rc = -EAGAIN;
  if (!timeout)
   break;
 }
 finish_wait(sk->sk_sleep, &wait);
 return rc;
}
