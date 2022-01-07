
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct net_bridge_port {int dev; } ;
struct net_bridge {int dummy; } ;
struct ethhdr {int dummy; } ;
struct br_ip {int dummy; } ;


 int NF_BR_LOCAL_OUT ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,int ,int ) ;
 int PF_BRIDGE ;
 int __skb_push (struct sk_buff*,int) ;
 struct sk_buff* br_multicast_alloc_query (struct net_bridge*,struct br_ip*) ;
 int dev_queue_xmit ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void __br_multicast_send_query(struct net_bridge *br,
          struct net_bridge_port *port,
          struct br_ip *ip)
{
 struct sk_buff *skb;

 skb = br_multicast_alloc_query(br, ip);
 if (!skb)
  return;

 if (port) {
  __skb_push(skb, sizeof(struct ethhdr));
  skb->dev = port->dev;
  NF_HOOK(PF_BRIDGE, NF_BR_LOCAL_OUT, skb, ((void*)0), skb->dev,
   dev_queue_xmit);
 } else
  netif_rx(skb);
}
