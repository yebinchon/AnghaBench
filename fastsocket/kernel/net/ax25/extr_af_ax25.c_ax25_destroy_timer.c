
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_3__ {struct sock* sk; } ;
typedef TYPE_1__ ax25_cb ;


 int ax25_destroy_socket (TYPE_1__*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void ax25_destroy_timer(unsigned long data)
{
 ax25_cb *ax25=(ax25_cb *)data;
 struct sock *sk;

 sk=ax25->sk;

 bh_lock_sock(sk);
 sock_hold(sk);
 ax25_destroy_socket(ax25);
 bh_unlock_sock(sk);
 sock_put(sk);
}
