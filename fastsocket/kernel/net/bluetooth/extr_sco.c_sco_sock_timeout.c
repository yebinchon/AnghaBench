
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_state_change ) (struct sock*) ;int sk_err; int sk_state; } ;


 int BT_DBG (char*,struct sock*,int ) ;
 int ETIMEDOUT ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int sco_sock_kill (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void sco_sock_timeout(unsigned long arg)
{
 struct sock *sk = (struct sock *) arg;

 BT_DBG("sock %p state %d", sk, sk->sk_state);

 bh_lock_sock(sk);
 sk->sk_err = ETIMEDOUT;
 sk->sk_state_change(sk);
 bh_unlock_sock(sk);

 sco_sock_kill(sk);
 sock_put(sk);
}
