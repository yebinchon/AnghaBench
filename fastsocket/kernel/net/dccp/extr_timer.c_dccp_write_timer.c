
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {int icsk_pending; scalar_t__ icsk_timeout; int icsk_retransmit_timer; } ;


 scalar_t__ DCCP_CLOSED ;
 int HZ ;

 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int dccp_retransmit_timer (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void dccp_write_timer(unsigned long data)
{
 struct sock *sk = (struct sock *)data;
 struct inet_connection_sock *icsk = inet_csk(sk);
 int event = 0;

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk)) {

  sk_reset_timer(sk, &icsk->icsk_retransmit_timer,
          jiffies + (HZ / 20));
  goto out;
 }

 if (sk->sk_state == DCCP_CLOSED || !icsk->icsk_pending)
  goto out;

 if (time_after(icsk->icsk_timeout, jiffies)) {
  sk_reset_timer(sk, &icsk->icsk_retransmit_timer,
          icsk->icsk_timeout);
  goto out;
 }

 event = icsk->icsk_pending;
 icsk->icsk_pending = 0;

 switch (event) {
 case 128:
  dccp_retransmit_timer(sk);
  break;
 }
out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
