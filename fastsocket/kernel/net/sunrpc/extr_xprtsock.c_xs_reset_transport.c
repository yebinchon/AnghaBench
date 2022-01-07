
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sock_xprt {struct socket* sock; struct sock* inet; scalar_t__ srcport; } ;
struct sock {scalar_t__ sk_no_check; int sk_callback_lock; int * sk_user_data; } ;


 int sock_release (struct socket*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xs_restore_old_callbacks (struct sock_xprt*,struct sock*) ;

__attribute__((used)) static void xs_reset_transport(struct sock_xprt *transport)
{
 struct socket *sock = transport->sock;
 struct sock *sk = transport->inet;

 if (sk == ((void*)0))
  return;

 transport->srcport = 0;

 write_lock_bh(&sk->sk_callback_lock);
 transport->inet = ((void*)0);
 transport->sock = ((void*)0);

 sk->sk_user_data = ((void*)0);

 xs_restore_old_callbacks(transport, sk);
 write_unlock_bh(&sk->sk_callback_lock);

 sk->sk_no_check = 0;

 sock_release(sock);
}
