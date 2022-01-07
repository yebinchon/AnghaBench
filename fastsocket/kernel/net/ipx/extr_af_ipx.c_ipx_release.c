
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;} ;


 int SOCK_DEAD ;
 int ipx_destroy_socket (struct sock*) ;
 int sk_refcnt_debug_release (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int ipx_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (!sk)
  goto out;

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_state_change(sk);

 sock_set_flag(sk, SOCK_DEAD);
 sock->sk = ((void*)0);
 sk_refcnt_debug_release(sk);
 ipx_destroy_socket(sk);
out:
 return 0;
}
