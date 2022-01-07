
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_shutdown; int sk_sleep; TYPE_1__* sk_socket; scalar_t__ sk_err; int sk_receive_queue; } ;
struct TYPE_2__ {int flags; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int RCV_SHUTDOWN ;
 int SOCK_ASYNC_WAITDATA ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int ,int *) ;
 int clear_bit (int ,int *) ;
 int current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 long schedule_timeout (long) ;
 int set_bit (int ,int *) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int skb_queue_empty (int *) ;
 int wait ;

__attribute__((used)) static long rfcomm_sock_data_wait(struct sock *sk, long timeo)
{
 DECLARE_WAITQUEUE(wait, current);

 add_wait_queue(sk->sk_sleep, &wait);
 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);

  if (!skb_queue_empty(&sk->sk_receive_queue) ||
      sk->sk_err ||
      (sk->sk_shutdown & RCV_SHUTDOWN) ||
      signal_pending(current) ||
      !timeo)
   break;

  set_bit(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock(sk);
  clear_bit(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
 }

 __set_current_state(TASK_RUNNING);
 remove_wait_queue(sk->sk_sleep, &wait);
 return timeo;
}
