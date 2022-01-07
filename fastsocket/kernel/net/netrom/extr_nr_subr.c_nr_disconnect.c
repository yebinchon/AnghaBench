
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_err; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; int sk_state; } ;
struct TYPE_2__ {int state; } ;


 int NR_STATE_0 ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int nr_clear_queues (struct sock*) ;
 TYPE_1__* nr_sk (struct sock*) ;
 int nr_stop_idletimer (struct sock*) ;
 int nr_stop_t1timer (struct sock*) ;
 int nr_stop_t2timer (struct sock*) ;
 int nr_stop_t4timer (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

void nr_disconnect(struct sock *sk, int reason)
{
 nr_stop_t1timer(sk);
 nr_stop_t2timer(sk);
 nr_stop_t4timer(sk);
 nr_stop_idletimer(sk);

 nr_clear_queues(sk);

 nr_sk(sk)->state = NR_STATE_0;

 sk->sk_state = TCP_CLOSE;
 sk->sk_err = reason;
 sk->sk_shutdown |= SEND_SHUTDOWN;

 if (!sock_flag(sk, SOCK_DEAD)) {
  sk->sk_state_change(sk);
  sock_set_flag(sk, SOCK_DEAD);
 }
}
