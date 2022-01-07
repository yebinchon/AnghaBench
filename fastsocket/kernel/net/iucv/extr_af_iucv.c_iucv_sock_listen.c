
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;


 int EINVAL ;
 scalar_t__ IUCV_BOUND ;
 scalar_t__ IUCV_LISTEN ;
 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int iucv_sock_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int err;

 lock_sock(sk);

 err = -EINVAL;
 if (sk->sk_state != IUCV_BOUND)
  goto done;

 if (sock->type != SOCK_STREAM && sock->type != SOCK_SEQPACKET)
  goto done;

 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;
 sk->sk_state = IUCV_LISTEN;
 err = 0;

done:
 release_sock(sk);
 return err;
}
