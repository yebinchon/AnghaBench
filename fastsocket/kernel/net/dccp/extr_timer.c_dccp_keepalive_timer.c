
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 scalar_t__ DCCP_LISTEN ;
 int HZ ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int dccp_response_timer (struct sock*) ;
 int inet_csk_reset_keepalive_timer (struct sock*,int) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void dccp_keepalive_timer(unsigned long data)
{
 struct sock *sk = (struct sock *)data;


 bh_lock_sock(sk);
 if (sock_owned_by_user(sk)) {

  inet_csk_reset_keepalive_timer(sk, HZ / 20);
  goto out;
 }

 if (sk->sk_state == DCCP_LISTEN) {
  dccp_response_timer(sk);
  goto out;
 }
out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
