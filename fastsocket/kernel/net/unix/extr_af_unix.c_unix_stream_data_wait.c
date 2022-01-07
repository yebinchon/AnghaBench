
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_shutdown; int sk_sleep; TYPE_1__* sk_socket; scalar_t__ sk_err; int sk_receive_queue; } ;
struct TYPE_2__ {int flags; } ;


 int DEFINE_WAIT (int ) ;
 int RCV_SHUTDOWN ;
 int SOCK_ASYNC_WAITDATA ;
 int TASK_INTERRUPTIBLE ;
 int clear_bit (int ,int *) ;
 int current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 long schedule_timeout (long) ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int skb_queue_empty (int *) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;
 int wait ;

__attribute__((used)) static long unix_stream_data_wait(struct sock *sk, long timeo)
{
 DEFINE_WAIT(wait);

 unix_state_lock(sk);

 for (;;) {
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

  if (!skb_queue_empty(&sk->sk_receive_queue) ||
      sk->sk_err ||
      (sk->sk_shutdown & RCV_SHUTDOWN) ||
      signal_pending(current) ||
      !timeo)
   break;

  set_bit(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
  unix_state_unlock(sk);
  timeo = schedule_timeout(timeo);
  unix_state_lock(sk);
  clear_bit(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
 }

 finish_wait(sk->sk_sleep, &wait);
 unix_state_unlock(sk);
 return timeo;
}
