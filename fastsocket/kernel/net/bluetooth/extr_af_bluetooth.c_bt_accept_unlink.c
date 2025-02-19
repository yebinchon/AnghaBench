
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct TYPE_4__ {TYPE_1__* parent; int accept_q; } ;
struct TYPE_3__ {int sk_ack_backlog; } ;


 int BT_DBG (char*,struct sock*,int ) ;
 TYPE_2__* bt_sk (struct sock*) ;
 int list_del_init (int *) ;
 int sock_put (struct sock*) ;

void bt_accept_unlink(struct sock *sk)
{
 BT_DBG("sk %p state %d", sk, sk->sk_state);

 list_del_init(&bt_sk(sk)->accept_q);
 bt_sk(sk)->parent->sk_ack_backlog--;
 bt_sk(sk)->parent = ((void*)0);
 sock_put(sk);
}
