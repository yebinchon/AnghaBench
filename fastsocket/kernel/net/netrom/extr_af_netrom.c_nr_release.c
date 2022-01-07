
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_shutdown; int sk_state; } ;
struct nr_sock {int state; int n2count; } ;


 int NR_DISCREQ ;




 int SEND_SHUTDOWN ;
 int SOCK_DESTROY ;
 int TCP_CLOSE ;
 int lock_sock (struct sock*) ;
 int nr_clear_queues (struct sock*) ;
 int nr_destroy_socket (struct sock*) ;
 int nr_disconnect (struct sock*,int ) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_t1timer (struct sock*) ;
 int nr_stop_idletimer (struct sock*) ;
 int nr_stop_t2timer (struct sock*) ;
 int nr_stop_t4timer (struct sock*) ;
 int nr_write_internal (struct sock*,int ) ;
 int release_sock (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int nr_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct nr_sock *nr;

 if (sk == ((void*)0)) return 0;

 sock_hold(sk);
 sock_orphan(sk);
 lock_sock(sk);
 nr = nr_sk(sk);

 switch (nr->state) {
 case 131:
 case 130:
 case 129:
  nr_disconnect(sk, 0);
  nr_destroy_socket(sk);
  break;

 case 128:
  nr_clear_queues(sk);
  nr->n2count = 0;
  nr_write_internal(sk, NR_DISCREQ);
  nr_start_t1timer(sk);
  nr_stop_t2timer(sk);
  nr_stop_t4timer(sk);
  nr_stop_idletimer(sk);
  nr->state = 129;
  sk->sk_state = TCP_CLOSE;
  sk->sk_shutdown |= SEND_SHUTDOWN;
  sk->sk_state_change(sk);
  sock_set_flag(sk, SOCK_DESTROY);
  break;

 default:
  break;
 }

 sock->sk = ((void*)0);
 release_sock(sk);
 sock_put(sk);

 return 0;
}
