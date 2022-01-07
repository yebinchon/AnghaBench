
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_cork {int dummy; } ;


 struct sk_buff* __skb_dequeue_tail (struct sk_buff_head*) ;
 int ip_cork_release (struct inet_cork*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void __ip_flush_pending_frames(struct sock *sk,
          struct sk_buff_head *queue,
          struct inet_cork *cork)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue_tail(queue)) != ((void*)0))
  kfree_skb(skb);

 ip_cork_release(cork);
}
