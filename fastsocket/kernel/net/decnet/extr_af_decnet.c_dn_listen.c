
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ DN_O ;
 TYPE_1__* DN_SK (struct sock*) ;
 int EINVAL ;
 int SOCK_ZAPPED ;
 scalar_t__ TCP_LISTEN ;
 int dn_rehash_sock (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int dn_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int err = -EINVAL;

 lock_sock(sk);

 if (sock_flag(sk, SOCK_ZAPPED))
  goto out;

 if ((DN_SK(sk)->state != DN_O) || (sk->sk_state == TCP_LISTEN))
  goto out;

 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;
 sk->sk_state = TCP_LISTEN;
 err = 0;
 dn_rehash_sock(sk);

out:
 release_sock(sk);

 return err;
}
