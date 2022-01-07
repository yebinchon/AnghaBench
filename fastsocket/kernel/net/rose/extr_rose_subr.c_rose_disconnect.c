
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_err; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; int sk_state; } ;
struct rose_sock {int cause; int diagnostic; int state; scalar_t__ lci; } ;


 int ROSE_STATE_0 ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int rose_clear_queues (struct sock*) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_stop_idletimer (struct sock*) ;
 int rose_stop_timer (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

void rose_disconnect(struct sock *sk, int reason, int cause, int diagnostic)
{
 struct rose_sock *rose = rose_sk(sk);

 rose_stop_timer(sk);
 rose_stop_idletimer(sk);

 rose_clear_queues(sk);

 rose->lci = 0;
 rose->state = ROSE_STATE_0;

 if (cause != -1)
  rose->cause = cause;

 if (diagnostic != -1)
  rose->diagnostic = diagnostic;

 sk->sk_state = TCP_CLOSE;
 sk->sk_err = reason;
 sk->sk_shutdown |= SEND_SHUTDOWN;

 if (!sock_flag(sk, SOCK_DEAD)) {
  sk->sk_state_change(sk);
  sock_set_flag(sk, SOCK_DEAD);
 }
}
