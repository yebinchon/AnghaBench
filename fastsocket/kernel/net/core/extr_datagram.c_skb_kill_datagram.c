
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct sock {TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int users; } ;


 int ENOENT ;
 unsigned int MSG_PEEK ;
 int __skb_unlink (struct sk_buff*,TYPE_1__*) ;
 int atomic_dec (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int sk_mem_reclaim_partial (struct sock*) ;
 struct sk_buff* skb_peek (TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int skb_kill_datagram(struct sock *sk, struct sk_buff *skb, unsigned int flags)
{
 int err = 0;

 if (flags & MSG_PEEK) {
  err = -ENOENT;
  spin_lock_bh(&sk->sk_receive_queue.lock);
  if (skb == skb_peek(&sk->sk_receive_queue)) {
   __skb_unlink(skb, &sk->sk_receive_queue);
   atomic_dec(&skb->users);
   err = 0;
  }
  spin_unlock_bh(&sk->sk_receive_queue.lock);
 }

 kfree_skb(skb);
 sk_mem_reclaim_partial(sk);

 return err;
}
