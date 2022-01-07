
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rxrpc_skb_priv {int error; } ;


 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;

int rxrpc_kernel_get_error_number(struct sk_buff *skb)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);

 return sp->error;
}
