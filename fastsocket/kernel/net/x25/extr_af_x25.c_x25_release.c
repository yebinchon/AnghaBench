
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {int state; } ;
struct socket {struct sock* sk; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_shutdown; int sk_state; } ;


 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int SOCK_DESTROY ;
 int TCP_CLOSE ;
 int X25_CLEAR_REQUEST ;





 int sock_orphan (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int x25_clear_queues (struct sock*) ;
 int x25_destroy_socket (struct sock*) ;
 int x25_disconnect (struct sock*,int ,int ,int ) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_start_t23timer (struct sock*) ;
 int x25_write_internal (struct sock*,int ) ;

__attribute__((used)) static int x25_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct x25_sock *x25;

 if (!sk)
  goto out;

 x25 = x25_sk(sk);

 switch (x25->state) {

  case 132:
  case 130:
   x25_disconnect(sk, 0, 0, 0);
   x25_destroy_socket(sk);
   goto out;

  case 131:
  case 129:
  case 128:
   x25_clear_queues(sk);
   x25_write_internal(sk, X25_CLEAR_REQUEST);
   x25_start_t23timer(sk);
   x25->state = 130;
   sk->sk_state = TCP_CLOSE;
   sk->sk_shutdown |= SEND_SHUTDOWN;
   sk->sk_state_change(sk);
   sock_set_flag(sk, SOCK_DEAD);
   sock_set_flag(sk, SOCK_DESTROY);
   break;
 }

 sock_orphan(sk);
out:
 return 0;
}
