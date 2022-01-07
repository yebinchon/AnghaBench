
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_shutdown; int sk_state; } ;
struct rose_sock {int state; TYPE_1__* neighbour; } ;
struct TYPE_2__ {int use; } ;


 int ROSE_CLEAR_REQUEST ;






 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int SOCK_DESTROY ;
 int TCP_CLOSE ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int rose_clear_queues (struct sock*) ;
 int rose_destroy_socket (struct sock*) ;
 int rose_disconnect (struct sock*,int ,int,int) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_start_t3timer (struct sock*) ;
 int rose_stop_idletimer (struct sock*) ;
 int rose_write_internal (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int rose_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct rose_sock *rose;

 if (sk == ((void*)0)) return 0;

 sock_hold(sk);
 sock_orphan(sk);
 lock_sock(sk);
 rose = rose_sk(sk);

 switch (rose->state) {
 case 133:
  release_sock(sk);
  rose_disconnect(sk, 0, -1, -1);
  lock_sock(sk);
  rose_destroy_socket(sk);
  break;

 case 131:
  rose->neighbour->use--;
  release_sock(sk);
  rose_disconnect(sk, 0, -1, -1);
  lock_sock(sk);
  rose_destroy_socket(sk);
  break;

 case 132:
 case 130:
 case 129:
 case 128:
  rose_clear_queues(sk);
  rose_stop_idletimer(sk);
  rose_write_internal(sk, ROSE_CLEAR_REQUEST);
  rose_start_t3timer(sk);
  rose->state = 131;
  sk->sk_state = TCP_CLOSE;
  sk->sk_shutdown |= SEND_SHUTDOWN;
  sk->sk_state_change(sk);
  sock_set_flag(sk, SOCK_DEAD);
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
