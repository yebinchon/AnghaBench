
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sock {int sk_state; int sk_write_pending; int sk_sleep; int sk_err; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EPIPE ;
 int TASK_INTERRUPTIBLE ;
 int TCPF_CLOSE_WAIT ;
 int TCPF_ESTABLISHED ;
 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 struct task_struct* current ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 scalar_t__ signal_pending (struct task_struct*) ;
 int sk_wait_event (struct sock*,long*,int) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;

int sk_stream_wait_connect(struct sock *sk, long *timeo_p)
{
 struct task_struct *tsk = current;
 DEFINE_WAIT(wait);
 int done;

 do {
  int err = sock_error(sk);
  if (err)
   return err;
  if ((1 << sk->sk_state) & ~(TCPF_SYN_SENT | TCPF_SYN_RECV))
   return -EPIPE;
  if (!*timeo_p)
   return -EAGAIN;
  if (signal_pending(tsk))
   return sock_intr_errno(*timeo_p);

  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
  sk->sk_write_pending++;
  done = sk_wait_event(sk, timeo_p,
         !sk->sk_err &&
         !((1 << sk->sk_state) &
           ~(TCPF_ESTABLISHED | TCPF_CLOSE_WAIT)));
  finish_wait(sk->sk_sleep, &wait);
  sk->sk_write_pending--;
 } while (!done);
 return 0;
}
