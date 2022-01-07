
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_sleep; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 int signal_pending (int ) ;
 int sk_stream_closing (struct sock*) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int) ;
 int wait ;

void sk_stream_wait_close(struct sock *sk, long timeout)
{
 if (timeout) {
  DEFINE_WAIT(wait);

  do {
   prepare_to_wait(sk->sk_sleep, &wait,
     TASK_INTERRUPTIBLE);
   if (sk_wait_event(sk, &timeout, !sk_stream_closing(sk)))
    break;
  } while (!signal_pending(current) && timeout);

  finish_wait(sk->sk_sleep, &wait);
 }
}
