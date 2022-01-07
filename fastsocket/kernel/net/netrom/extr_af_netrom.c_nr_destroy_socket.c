
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; int function; } ;
struct sock {TYPE_2__ sk_timer; int sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_3__ {int state; } ;


 int HZ ;
 int NR_STATE_0 ;
 int SOCK_DEAD ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int nr_clear_queues (struct sock*) ;
 int nr_destroy_timer ;
 int nr_remove_socket (struct sock*) ;
 TYPE_1__* nr_sk (struct sock*) ;
 int nr_start_heartbeat (struct sock*) ;
 int nr_stop_heartbeat (struct sock*) ;
 int nr_stop_idletimer (struct sock*) ;
 int nr_stop_t1timer (struct sock*) ;
 int nr_stop_t2timer (struct sock*) ;
 int nr_stop_t4timer (struct sock*) ;
 scalar_t__ sk_has_allocations (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

void nr_destroy_socket(struct sock *sk)
{
 struct sk_buff *skb;

 nr_remove_socket(sk);

 nr_stop_heartbeat(sk);
 nr_stop_t1timer(sk);
 nr_stop_t2timer(sk);
 nr_stop_t4timer(sk);
 nr_stop_idletimer(sk);

 nr_clear_queues(sk);

 while ((skb = skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
  if (skb->sk != sk) {

   sock_set_flag(skb->sk, SOCK_DEAD);
   nr_start_heartbeat(skb->sk);
   nr_sk(skb->sk)->state = NR_STATE_0;
  }

  kfree_skb(skb);
 }

 if (sk_has_allocations(sk)) {

  sk->sk_timer.function = nr_destroy_timer;
  sk->sk_timer.expires = jiffies + 2 * HZ;
  add_timer(&sk->sk_timer);
 } else
  sock_put(sk);
}
