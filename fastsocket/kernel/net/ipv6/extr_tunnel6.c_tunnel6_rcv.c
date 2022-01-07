
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm6_tunnel {int (* handler ) (struct sk_buff*) ;struct xfrm6_tunnel* next; } ;
struct sk_buff {int dev; } ;
struct ipv6hdr {int dummy; } ;


 int ICMPV6_DEST_UNREACH ;
 int ICMPV6_PORT_UNREACH ;
 int icmpv6_send (struct sk_buff*,int ,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;
 struct xfrm6_tunnel* tunnel6_handlers ;

__attribute__((used)) static int tunnel6_rcv(struct sk_buff *skb)
{
 struct xfrm6_tunnel *handler;

 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
  goto drop;

 for (handler = tunnel6_handlers; handler; handler = handler->next)
  if (!handler->handler(skb))
   return 0;

 icmpv6_send(skb, ICMPV6_DEST_UNREACH, ICMPV6_PORT_UNREACH, 0, skb->dev);

drop:
 kfree_skb(skb);
 return 0;
}
