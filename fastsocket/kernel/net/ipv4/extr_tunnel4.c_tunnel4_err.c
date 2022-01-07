
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_tunnel {int (* err_handler ) (struct sk_buff*,int ) ;struct xfrm_tunnel* next; } ;
struct sk_buff {int dummy; } ;


 int stub1 (struct sk_buff*,int ) ;
 struct xfrm_tunnel* tunnel4_handlers ;

__attribute__((used)) static void tunnel4_err(struct sk_buff *skb, u32 info)
{
 struct xfrm_tunnel *handler;

 for (handler = tunnel4_handlers; handler; handler = handler->next)
  if (!handler->err_handler(skb, info))
   break;
}
