
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_shutdown; int sk_sleep; int sk_write_pending; scalar_t__ sk_err; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int flags; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EPIPE ;
 int HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 int SEND_SHUTDOWN ;
 int SOCK_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int TASK_INTERRUPTIBLE ;
 int clear_bit (int ,int *) ;
 int current ;
 int finish_wait (int ,int *) ;
 int net_random () ;
 int prepare_to_wait (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ sk_stream_memory_free (struct sock*) ;
 int sk_wait_event (struct sock*,long*,int) ;
 int sock_intr_errno (long) ;
 int wait ;

int sk_stream_wait_memory(struct sock *sk, long *timeo_p)
{
 int err = 0;
 long vm_wait = 0;
 long current_timeo = *timeo_p;
 DEFINE_WAIT(wait);

 if (sk_stream_memory_free(sk))
  current_timeo = vm_wait = (net_random() % (HZ / 5)) + 2;

 while (1) {
  set_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);

  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

  if (sk->sk_err || (sk->sk_shutdown & SEND_SHUTDOWN))
   goto do_error;
  if (!*timeo_p)
   goto do_nonblock;
  if (signal_pending(current))
   goto do_interrupted;
  clear_bit(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
  if (sk_stream_memory_free(sk) && !vm_wait)
   break;

  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  sk->sk_write_pending++;
  sk_wait_event(sk, &current_timeo, !sk->sk_err &&
        !(sk->sk_shutdown & SEND_SHUTDOWN) &&
        sk_stream_memory_free(sk) &&
        vm_wait);
  sk->sk_write_pending--;

  if (vm_wait) {
   vm_wait -= current_timeo;
   current_timeo = *timeo_p;
   if (current_timeo != MAX_SCHEDULE_TIMEOUT &&
       (current_timeo -= vm_wait) < 0)
    current_timeo = 0;
   vm_wait = 0;
  }
  *timeo_p = current_timeo;
 }
out:
 finish_wait(sk->sk_sleep, &wait);
 return err;

do_error:
 err = -EPIPE;
 goto out;
do_nonblock:
 err = -EAGAIN;
 goto out;
do_interrupted:
 err = sock_intr_errno(*timeo_p);
 goto out;
}
