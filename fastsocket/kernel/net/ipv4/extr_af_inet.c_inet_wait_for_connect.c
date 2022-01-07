
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int sk_sleep; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static long inet_wait_for_connect(struct sock *sk, long timeo)
{
 DEFINE_WAIT(wait);

 prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);






 while ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {
  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock(sk);
  if (signal_pending(current) || !timeo)
   break;
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
 }
 finish_wait(sk->sk_sleep, &wait);
 return timeo;
}
