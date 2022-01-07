
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int rxrpc_free_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;

__attribute__((used)) static inline void rxrpc_purge_queue(struct sk_buff_head *list)
{
 struct sk_buff *skb;
 while ((skb = skb_dequeue((list))) != ((void*)0))
  rxrpc_free_skb(skb);
}
