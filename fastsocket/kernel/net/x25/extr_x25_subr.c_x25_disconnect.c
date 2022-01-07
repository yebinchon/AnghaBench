
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char cause; unsigned char diagnostic; } ;
struct x25_sock {TYPE_1__ causediag; int state; scalar_t__ lci; } ;
struct sock {int sk_err; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; int sk_state; } ;


 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int X25_STATE_0 ;
 int sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int x25_clear_queues (struct sock*) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_stop_timer (struct sock*) ;

void x25_disconnect(struct sock *sk, int reason, unsigned char cause,
      unsigned char diagnostic)
{
 struct x25_sock *x25 = x25_sk(sk);

 x25_clear_queues(sk);
 x25_stop_timer(sk);

 x25->lci = 0;
 x25->state = X25_STATE_0;

 x25->causediag.cause = cause;
 x25->causediag.diagnostic = diagnostic;

 sk->sk_state = TCP_CLOSE;
 sk->sk_err = reason;
 sk->sk_shutdown |= SEND_SHUTDOWN;

 if (!sock_flag(sk, SOCK_DEAD)) {
  sk->sk_state_change(sk);
  sock_set_flag(sk, SOCK_DEAD);
 }
}
