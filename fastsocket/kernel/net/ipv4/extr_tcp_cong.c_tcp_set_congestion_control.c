
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_congestion_ops {int flags; int (* init ) (struct sock*) ;int owner; } ;
struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {struct tcp_congestion_ops* icsk_ca_ops; } ;


 int CAP_NET_ADMIN ;
 int EBUSY ;
 int ENOENT ;
 int EPERM ;
 scalar_t__ TCP_CLOSE ;
 int TCP_CONG_NON_RESTRICTED ;
 scalar_t__ capable (int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*,char const*) ;
 int stub1 (struct sock*) ;
 struct tcp_congestion_ops* tcp_ca_find (char const*) ;
 int tcp_cleanup_congestion_control (struct sock*) ;
 int try_module_get (int ) ;

int tcp_set_congestion_control(struct sock *sk, const char *name)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_congestion_ops *ca;
 int err = 0;

 rcu_read_lock();
 ca = tcp_ca_find(name);


 if (ca == icsk->icsk_ca_ops)
  goto out;
 if (!ca)
  err = -ENOENT;

 else if (!((ca->flags & TCP_CONG_NON_RESTRICTED) || capable(CAP_NET_ADMIN)))
  err = -EPERM;

 else if (!try_module_get(ca->owner))
  err = -EBUSY;

 else {
  tcp_cleanup_congestion_control(sk);
  icsk->icsk_ca_ops = ca;

  if (sk->sk_state != TCP_CLOSE && icsk->icsk_ca_ops->init)
   icsk->icsk_ca_ops->init(sk);
 }
 out:
 rcu_read_unlock();
 return err;
}
