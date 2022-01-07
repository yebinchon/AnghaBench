
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; int sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_5__ {int state; } ;


 int HZ ;
 int ROSE_STATE_0 ;
 int SOCK_DEAD ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int rose_clear_queues (struct sock*) ;
 int rose_destroy_timer ;
 int rose_remove_socket (struct sock*) ;
 TYPE_2__* rose_sk (struct sock*) ;
 int rose_start_heartbeat (struct sock*) ;
 int rose_stop_heartbeat (struct sock*) ;
 int rose_stop_idletimer (struct sock*) ;
 int rose_stop_timer (struct sock*) ;
 int setup_timer (TYPE_1__*,int ,unsigned long) ;
 scalar_t__ sk_has_allocations (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

void rose_destroy_socket(struct sock *sk)
{
 struct sk_buff *skb;

 rose_remove_socket(sk);
 rose_stop_heartbeat(sk);
 rose_stop_idletimer(sk);
 rose_stop_timer(sk);

 rose_clear_queues(sk);

 while ((skb = skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
  if (skb->sk != sk) {

   sock_set_flag(skb->sk, SOCK_DEAD);
   rose_start_heartbeat(skb->sk);
   rose_sk(skb->sk)->state = ROSE_STATE_0;
  }

  kfree_skb(skb);
 }

 if (sk_has_allocations(sk)) {

  setup_timer(&sk->sk_timer, rose_destroy_timer,
    (unsigned long)sk);
  sk->sk_timer.expires = jiffies + 10 * HZ;
  add_timer(&sk->sk_timer);
 } else
  sock_put(sk);
}
