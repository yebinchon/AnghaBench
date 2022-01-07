
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_timer; int sk_state; } ;


 int BT_DBG (char*,struct sock*,int ) ;
 int sk_stop_timer (struct sock*,int *) ;

__attribute__((used)) static void l2cap_sock_clear_timer(struct sock *sk)
{
 BT_DBG("sock %p state %d", sk, sk->sk_state);
 sk_stop_timer(sk, &sk->sk_timer);
}
