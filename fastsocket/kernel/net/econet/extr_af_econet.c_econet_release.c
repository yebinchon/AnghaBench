
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {unsigned long data; int function; scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; int sk_receive_queue; int (* sk_state_change ) (struct sock*) ;} ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 int econet_destroy_timer ;
 int econet_mutex ;
 int econet_remove_socket (int *,struct sock*) ;
 int econet_sklist ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sk_free (struct sock*) ;
 scalar_t__ sk_has_allocations (struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_orphan (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int econet_release(struct socket *sock)
{
 struct sock *sk;

 mutex_lock(&econet_mutex);

 sk = sock->sk;
 if (!sk)
  goto out_unlock;

 econet_remove_socket(&econet_sklist, sk);





 sk->sk_state_change(sk);

 sock_orphan(sk);



 skb_queue_purge(&sk->sk_receive_queue);

 if (sk_has_allocations(sk)) {
  sk->sk_timer.data = (unsigned long)sk;
  sk->sk_timer.expires = jiffies + HZ;
  sk->sk_timer.function = econet_destroy_timer;
  add_timer(&sk->sk_timer);

  goto out_unlock;
 }

 sk_free(sk);

out_unlock:
 mutex_unlock(&econet_mutex);
 return 0;
}
