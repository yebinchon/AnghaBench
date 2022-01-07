
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_timer; int sk_state; } ;


 int BT_DBG (char*,struct sock*,int ,long) ;
 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;

__attribute__((used)) static void sco_sock_set_timer(struct sock *sk, long timeout)
{
 BT_DBG("sock %p state %d timeout %ld", sk, sk->sk_state, timeout);
 sk_reset_timer(sk, &sk->sk_timer, jiffies + timeout);
}
