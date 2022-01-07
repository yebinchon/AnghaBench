
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_port {int dummy; } ;


 struct net_bridge_port* ERR_PTR (int) ;
 int deliver_clone (struct net_bridge_port*,struct sk_buff*,void (*) (struct net_bridge_port const*,struct sk_buff*)) ;
 int should_deliver (struct net_bridge_port*,struct sk_buff*) ;

__attribute__((used)) static struct net_bridge_port *maybe_deliver(
 struct net_bridge_port *prev, struct net_bridge_port *p,
 struct sk_buff *skb,
 void (*__packet_hook)(const struct net_bridge_port *p,
         struct sk_buff *skb))
{
 int err;

 if (!should_deliver(p, skb))
  return prev;

 if (!prev)
  goto out;

 err = deliver_clone(prev, skb, __packet_hook);
 if (err)
  return ERR_PTR(err);

out:
 return p;
}
