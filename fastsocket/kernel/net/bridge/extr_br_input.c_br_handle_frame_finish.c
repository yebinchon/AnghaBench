
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct net_bridge_port {scalar_t__ state; struct net_bridge* br; } ;
struct net_bridge_mdb_entry {scalar_t__ mglist; } ;
struct net_bridge_fdb_entry {int dst; scalar_t__ is_local; } ;
struct net_bridge {TYPE_3__* dev; } ;
struct TYPE_10__ {scalar_t__ mrouters_only; TYPE_3__* brdev; } ;
struct TYPE_9__ {unsigned char* h_dest; int h_source; } ;
struct TYPE_7__ {int multicast; } ;
struct TYPE_8__ {int flags; TYPE_2__ stats; } ;
struct TYPE_6__ {int br_port; } ;


 TYPE_5__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 scalar_t__ BR_STATE_DISABLED ;
 scalar_t__ BR_STATE_LEARNING ;
 int IFF_PROMISC ;
 struct net_bridge_fdb_entry* __br_fdb_get (struct net_bridge*,unsigned char const*) ;
 int br_fdb_update (struct net_bridge*,struct net_bridge_port*,int ) ;
 int br_flood_forward (struct net_bridge*,struct sk_buff*,struct sk_buff*) ;
 int br_forward (int ,struct sk_buff*,struct sk_buff*) ;
 struct net_bridge_mdb_entry* br_mdb_get (struct net_bridge*,struct sk_buff*) ;
 int br_multicast_forward (struct net_bridge_mdb_entry*,struct sk_buff*,struct sk_buff*) ;
 scalar_t__ br_multicast_is_router (struct net_bridge*) ;
 scalar_t__ br_multicast_rcv (struct net_bridge*,struct net_bridge_port*,struct sk_buff*) ;
 int br_pass_frame_up (struct sk_buff*) ;
 TYPE_4__* eth_hdr (struct sk_buff*) ;
 scalar_t__ is_broadcast_ether_addr (unsigned char const*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 int kfree_skb (struct sk_buff*) ;
 struct net_bridge_port* rcu_dereference (int ) ;

int br_handle_frame_finish(struct sk_buff *skb)
{
 const unsigned char *dest = eth_hdr(skb)->h_dest;
 struct net_bridge_port *p = rcu_dereference(skb->dev->br_port);
 struct net_bridge *br;
 struct net_bridge_fdb_entry *dst;
 struct net_bridge_mdb_entry *mdst;
 struct sk_buff *skb2;

 if (!p || p->state == BR_STATE_DISABLED)
  goto drop;


 br = p->br;
 br_fdb_update(br, p, eth_hdr(skb)->h_source);

 if (!is_broadcast_ether_addr(dest) && is_multicast_ether_addr(dest) &&
     br_multicast_rcv(br, p, skb))
  goto drop;

 if (p->state == BR_STATE_LEARNING)
  goto drop;

 BR_INPUT_SKB_CB(skb)->brdev = br->dev;


 skb2 = ((void*)0);

 if (br->dev->flags & IFF_PROMISC)
  skb2 = skb;

 dst = ((void*)0);

 if (is_broadcast_ether_addr(dest))
  skb2 = skb;
 else if (is_multicast_ether_addr(dest)) {
  mdst = br_mdb_get(br, skb);
  if (mdst || BR_INPUT_SKB_CB(skb)->mrouters_only) {
   if ((mdst && mdst->mglist) ||
       br_multicast_is_router(br))
    skb2 = skb;
   br_multicast_forward(mdst, skb, skb2);
   skb = ((void*)0);
   if (!skb2)
    goto out;
  } else
   skb2 = skb;

  br->dev->stats.multicast++;
 } else if ((dst = __br_fdb_get(br, dest)) && dst->is_local) {
  skb2 = skb;

  skb = ((void*)0);
 }

 if (skb) {
  if (dst)
   br_forward(dst->dst, skb, skb2);
  else
   br_flood_forward(br, skb, skb2);
 }

 if (skb2)
  return br_pass_frame_up(skb2);

out:
 return 0;
drop:
 kfree_skb(skb);
 goto out;
}
