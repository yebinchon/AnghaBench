
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int rxrpc_free_skb (struct sk_buff*) ;

void rxrpc_kernel_free_skb(struct sk_buff *skb)
{
 rxrpc_free_skb(skb);
}
