
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int node; } ;
struct ipxhdr {TYPE_1__ ipx_dest; } ;
struct ipx_route {int ir_intrfc; int ir_router_node; scalar_t__ ir_routed; } ;
struct TYPE_4__ {int ipx_dest_net; } ;


 TYPE_2__* IPX_SKB_CB (struct sk_buff*) ;
 struct ipxhdr* ipx_hdr (struct sk_buff*) ;
 int ipxitf_hold (int ) ;
 int ipxitf_put (int ) ;
 int ipxitf_send (int ,struct sk_buff*,int ) ;
 struct ipx_route* ipxrtr_lookup (int ) ;
 int ipxrtr_put (struct ipx_route*) ;
 int kfree_skb (struct sk_buff*) ;

int ipxrtr_route_skb(struct sk_buff *skb)
{
 struct ipxhdr *ipx = ipx_hdr(skb);
 struct ipx_route *r = ipxrtr_lookup(IPX_SKB_CB(skb)->ipx_dest_net);

 if (!r) {
  kfree_skb(skb);
  return 0;
 }

 ipxitf_hold(r->ir_intrfc);
 ipxitf_send(r->ir_intrfc, skb, r->ir_routed ?
   r->ir_router_node : ipx->ipx_dest.node);
 ipxitf_put(r->ir_intrfc);
 ipxrtr_put(r);

 return 0;
}
