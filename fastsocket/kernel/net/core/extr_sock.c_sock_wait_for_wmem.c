
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_sndbuf; int sk_shutdown; int sk_sleep; scalar_t__ sk_err; int sk_wmem_alloc; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int flags; } ;


 int DEFINE_WAIT (int ) ;
 int SEND_SHUTDOWN ;
 int SOCK_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 long schedule_timeout (long) ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static long sock_wait_for_wmem(struct sock *sk, long timeo)
{
 DEFINE_WAIT(wait);

 clear_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
 for (;;) {
  if (!timeo)
   break;
  if (signal_pending(current))
   break;
  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
  if (atomic_read(&sk->sk_wmem_alloc) < sk->sk_sndbuf)
   break;
  if (sk->sk_shutdown & SEND_SHUTDOWN)
   break;
  if (sk->sk_err)
   break;
  timeo = schedule_timeout(timeo);
 }
 finish_wait(sk->sk_sleep, &wait);
 return timeo;
}
