
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_tunnel {int (* handler ) (struct sk_buff*) ;struct xfrm_tunnel* next; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;


 int ICMP_DEST_UNREACH ;
 int ICMP_PORT_UNREACH ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;
 struct xfrm_tunnel* tunnel4_handlers ;

__attribute__((used)) static int tunnel4_rcv(struct sk_buff *skb)
{
 struct xfrm_tunnel *handler;

 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  goto drop;

 for (handler = tunnel4_handlers; handler; handler = handler->next)
  if (!handler->handler(skb))
   return 0;

 icmp_send(skb, ICMP_DEST_UNREACH, ICMP_PORT_UNREACH, 0);

drop:
 kfree_skb(skb);
 return 0;
}
