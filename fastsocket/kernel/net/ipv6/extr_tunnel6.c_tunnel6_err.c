
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm6_tunnel {int (* err_handler ) (struct sk_buff*,struct inet6_skb_parm*,int ,int ,int,int ) ;struct xfrm6_tunnel* next; } ;
struct sk_buff {int dummy; } ;
struct inet6_skb_parm {int dummy; } ;
typedef int __be32 ;


 int stub1 (struct sk_buff*,struct inet6_skb_parm*,int ,int ,int,int ) ;
 struct xfrm6_tunnel* tunnel6_handlers ;

__attribute__((used)) static void tunnel6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
   u8 type, u8 code, int offset, __be32 info)
{
 struct xfrm6_tunnel *handler;

 for (handler = tunnel6_handlers; handler; handler = handler->next)
  if (!handler->err_handler(skb, opt, type, code, offset, info))
   break;
}
