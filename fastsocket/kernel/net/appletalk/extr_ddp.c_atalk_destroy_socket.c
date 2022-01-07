
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; int sk_receive_queue; } ;


 scalar_t__ SOCK_DESTROY_TIME ;
 int add_timer (TYPE_1__*) ;
 int atalk_destroy_timer ;
 int atalk_remove_socket (struct sock*) ;
 scalar_t__ jiffies ;
 int setup_timer (TYPE_1__*,int ,unsigned long) ;
 scalar_t__ sk_has_allocations (struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static inline void atalk_destroy_socket(struct sock *sk)
{
 atalk_remove_socket(sk);
 skb_queue_purge(&sk->sk_receive_queue);

 if (sk_has_allocations(sk)) {
  setup_timer(&sk->sk_timer, atalk_destroy_timer,
    (unsigned long)sk);
  sk->sk_timer.expires = jiffies + SOCK_DESTROY_TIME;
  add_timer(&sk->sk_timer);
 } else
  sock_put(sk);
}
