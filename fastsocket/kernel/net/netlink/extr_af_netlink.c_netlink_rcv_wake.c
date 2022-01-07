
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct netlink_sock {int wait; int state; } ;


 int clear_bit (int ,int *) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 scalar_t__ skb_queue_empty (int *) ;
 int test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void netlink_rcv_wake(struct sock *sk)
{
 struct netlink_sock *nlk = nlk_sk(sk);

 if (skb_queue_empty(&sk->sk_receive_queue))
  clear_bit(0, &nlk->state);
 if (!test_bit(0, &nlk->state))
  wake_up_interruptible(&nlk->wait);
}
