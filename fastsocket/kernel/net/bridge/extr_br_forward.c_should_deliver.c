
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ dev; } ;
struct net_bridge_port {int flags; scalar_t__ dev; scalar_t__ state; } ;


 int BR_HAIRPIN_MODE ;
 scalar_t__ BR_STATE_FORWARDING ;

__attribute__((used)) static inline int should_deliver(const struct net_bridge_port *p,
     const struct sk_buff *skb)
{
 return (((p->flags & BR_HAIRPIN_MODE) || skb->dev != p->dev) &&
  p->state == BR_STATE_FORWARDING);
}
