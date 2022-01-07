
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sock {scalar_t__ sk_rcvbuf; int (* sk_data_ready ) (struct sock*,int) ;int sk_drops; int sk_rmem_alloc; struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int len; scalar_t__ dropcount; int * dev; int truesize; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int SOCK_DEAD ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 scalar_t__ atomic_read (int *) ;
 int sk_filter (struct sock*,struct sk_buff*) ;
 int sk_rmem_schedule (struct sock*,int ) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sock*,int) ;
 int trace_sock_rcvqueue_full (struct sock*,struct sk_buff*) ;

int sock_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 int err = 0;
 int skb_len;
 unsigned long flags;
 struct sk_buff_head *list = &sk->sk_receive_queue;

 if (atomic_read(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf) {
  err = -ENOMEM;
  trace_sock_rcvqueue_full(sk, skb);
  goto out;
 }

 err = sk_filter(sk, skb);
 if (err)
  goto out;

 if (!sk_rmem_schedule(sk, skb->truesize)) {
  err = -ENOBUFS;
  goto out;
 }

 skb->dev = ((void*)0);
 skb_set_owner_r(skb, sk);






 skb_len = skb->len;

 spin_lock_irqsave(&list->lock, flags);
 skb->dropcount = atomic_read(&sk->sk_drops);
 __skb_queue_tail(list, skb);
 spin_unlock_irqrestore(&list->lock, flags);

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk, skb_len);
out:
 return err;
}
