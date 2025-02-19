
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; } ;
struct dn_scp {scalar_t__ persist; scalar_t__ keepalive; scalar_t__ state; scalar_t__ stamp; int (* keepalive_fxn ) (struct sock*) ;scalar_t__ (* persist_fxn ) (struct sock*) ;} ;


 scalar_t__ DN_RUN ;
 struct dn_scp* DN_SK (struct sock*) ;
 int HZ ;
 scalar_t__ SLOW_INTERVAL ;
 int add_timer (TYPE_1__*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 scalar_t__ jiffies ;
 int sock_hold (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static void dn_slow_timer(unsigned long arg)
{
 struct sock *sk = (struct sock *)arg;
 struct dn_scp *scp = DN_SK(sk);

 sock_hold(sk);
 bh_lock_sock(sk);

 if (sock_owned_by_user(sk)) {
  sk->sk_timer.expires = jiffies + HZ / 10;
  add_timer(&sk->sk_timer);
  goto out;
 }
 if (scp->persist && scp->persist_fxn) {
  if (scp->persist <= SLOW_INTERVAL) {
   scp->persist = 0;

   if (scp->persist_fxn(sk))
    goto out;
  } else {
   scp->persist -= SLOW_INTERVAL;
  }
 }
 if (scp->keepalive && scp->keepalive_fxn && (scp->state == DN_RUN)) {
  if ((jiffies - scp->stamp) >= scp->keepalive)
   scp->keepalive_fxn(sk);
 }

 sk->sk_timer.expires = jiffies + SLOW_INTERVAL;

 add_timer(&sk->sk_timer);
out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
