
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * ops; int type; } ;
struct sock {int sk_type; } ;


 int llc_ui_ops ;
 int sock_graft (struct sock*,struct socket*) ;

__attribute__((used)) static void llc_ui_sk_init(struct socket *sock, struct sock *sk)
{
 sock_graft(sk, sock);
 sk->sk_type = sock->type;
 sock->ops = &llc_ui_ops;
}
