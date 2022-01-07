
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_sleep; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_SYN_SENT ;
 int current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int) ;
 int wait ;

__attribute__((used)) static int llc_ui_wait_for_conn(struct sock *sk, long timeout)
{
 DEFINE_WAIT(wait);

 while (1) {
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
  if (sk_wait_event(sk, &timeout, sk->sk_state != TCP_SYN_SENT))
   break;
  if (signal_pending(current) || !timeout)
   break;
 }
 finish_wait(sk->sk_sleep, &wait);
 return timeout;
}
