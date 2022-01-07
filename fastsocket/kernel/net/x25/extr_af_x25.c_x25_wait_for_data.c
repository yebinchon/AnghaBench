
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; int sk_sleep; int sk_receive_queue; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int RCV_SHUTDOWN ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue_exclusive (int ,int *) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ skb_queue_empty (int *) ;
 int wait ;

__attribute__((used)) static int x25_wait_for_data(struct sock *sk, long timeout)
{
 DECLARE_WAITQUEUE(wait, current);
 int rc = 0;

 add_wait_queue_exclusive(sk->sk_sleep, &wait);
 for (;;) {
  __set_current_state(TASK_INTERRUPTIBLE);
  if (sk->sk_shutdown & RCV_SHUTDOWN)
   break;
  rc = -ERESTARTSYS;
  if (signal_pending(current))
   break;
  rc = -EAGAIN;
  if (!timeout)
   break;
  rc = 0;
  if (skb_queue_empty(&sk->sk_receive_queue)) {
   release_sock(sk);
   timeout = schedule_timeout(timeout);
   lock_sock(sk);
  } else
   break;
 }
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(sk->sk_sleep, &wait);
 return rc;
}
