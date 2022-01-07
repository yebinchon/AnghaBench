
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ pkt_type; struct net_device* dev; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct TYPE_7__ {TYPE_1__ dst; } ;
struct rtable {int rt_type; TYPE_2__ u; } ;
struct net_device {int type; unsigned char* broadcast; int dev_addr; int addr_len; } ;
struct net {int dummy; } ;
struct neighbour {TYPE_3__* parms; scalar_t__ updated; } ;
struct in_device {TYPE_4__* arp_parms; } ;
struct arphdr {scalar_t__ ar_pro; scalar_t__ ar_hrd; scalar_t__ ar_op; } ;
typedef scalar_t__ __be32 ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {scalar_t__ proxy_delay; } ;
struct TYPE_8__ {scalar_t__ locktime; } ;



 int ARPHRD_DLCI ;





 int const ARPOP_REPLY ;
 int const ARPOP_REQUEST ;
 int ARP_ACCEPT ;
 int const AX25_P_IP ;
 int ETH_P_ARP ;
 int const ETH_P_IP ;
 scalar_t__ IN_DEV_ARPFILTER (struct in_device*) ;
 scalar_t__ IN_DEV_FORWARD (struct in_device*) ;
 int IN_DEV_ROUTE_LOCALNET (struct in_device*) ;
 scalar_t__ IPV4_DEVCONF_ALL (struct net*,int ) ;
 int LOCALLY_ENQUEUED ;
 TYPE_5__* NEIGH_CB (struct sk_buff*) ;
 int NEIGH_UPDATE_F_OVERRIDE ;
 int NUD_REACHABLE ;
 int NUD_STALE ;
 scalar_t__ PACKET_HOST ;
 int RTN_LOCAL ;
 int RTN_UNICAST ;
 struct neighbour* __neigh_lookup (int *,scalar_t__*,struct net_device*,int) ;
 int arp_filter (scalar_t__,scalar_t__,struct net_device*) ;
 scalar_t__ arp_fwd_proxy (struct in_device*,struct net_device*,struct rtable*) ;
 scalar_t__ arp_fwd_pvlan (struct in_device*,struct net_device*,struct rtable*,scalar_t__,scalar_t__) ;
 struct arphdr* arp_hdr (struct sk_buff*) ;
 int arp_ignore (struct in_device*,scalar_t__,scalar_t__) ;
 int arp_send (int const,int ,scalar_t__,struct net_device*,scalar_t__,unsigned char*,int ,unsigned char*) ;
 int arp_tbl ;
 int consume_skb (struct sk_buff*) ;
 struct net* dev_net (struct net_device*) ;
 scalar_t__ htons (int const) ;
 struct in_device* in_dev_get (struct net_device*) ;
 int in_dev_put (struct in_device*) ;
 int inet_addr_type (struct net*,scalar_t__) ;
 scalar_t__ ip_route_input (struct sk_buff*,scalar_t__,scalar_t__,int ,struct net_device*) ;
 scalar_t__ ipv4_is_loopback (scalar_t__) ;
 scalar_t__ ipv4_is_multicast (scalar_t__) ;
 int jiffies ;
 int memcpy (scalar_t__*,unsigned char*,int) ;
 struct neighbour* neigh_event_ns (int *,unsigned char*,scalar_t__*,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int neigh_update (struct neighbour*,unsigned char*,int,int ) ;
 int pneigh_enqueue (int *,TYPE_4__*,struct sk_buff*) ;
 scalar_t__ pneigh_lookup (int *,struct net*,scalar_t__*,struct net_device*,int ) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static int arp_process(struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 struct in_device *in_dev = in_dev_get(dev);
 struct arphdr *arp;
 unsigned char *arp_ptr;
 struct rtable *rt;
 unsigned char *sha;
 __be32 sip, tip;
 u16 dev_type = dev->type;
 int addr_type;
 struct neighbour *n;
 struct net *net = dev_net(dev);





 if (in_dev == ((void*)0))
  goto out;

 arp = arp_hdr(skb);

 switch (dev_type) {
 default:
  if (arp->ar_pro != htons(ETH_P_IP) ||
      htons(dev_type) != arp->ar_hrd)
   goto out;
  break;
 case 132:
 case 129:
 case 131:
 case 130:
  if ((arp->ar_hrd != htons(132) &&
       arp->ar_hrd != htons(130)) ||
      arp->ar_pro != htons(ETH_P_IP))
   goto out;
  break;
 case 133:
  if (arp->ar_pro != htons(AX25_P_IP) ||
      arp->ar_hrd != htons(133))
   goto out;
  break;
 case 128:
  if (arp->ar_pro != htons(AX25_P_IP) ||
      arp->ar_hrd != htons(128))
   goto out;
  break;
 }



 if (arp->ar_op != htons(ARPOP_REPLY) &&
     arp->ar_op != htons(ARPOP_REQUEST))
  goto out;




 arp_ptr= (unsigned char *)(arp+1);
 sha = arp_ptr;
 arp_ptr += dev->addr_len;
 memcpy(&sip, arp_ptr, 4);
 arp_ptr += 4;
 arp_ptr += dev->addr_len;
 memcpy(&tip, arp_ptr, 4);




 if (ipv4_is_multicast(tip) ||
     (!IN_DEV_ROUTE_LOCALNET(in_dev) && ipv4_is_loopback(tip)))
  goto out;




 if (dev_type == ARPHRD_DLCI)
  sha = dev->broadcast;
 if (sip == 0) {
  if (arp->ar_op == htons(ARPOP_REQUEST) &&
      inet_addr_type(net, tip) == RTN_LOCAL &&
      !arp_ignore(in_dev, sip, tip))
   arp_send(ARPOP_REPLY, ETH_P_ARP, sip, dev, tip, sha,
     dev->dev_addr, sha);
  goto out;
 }

 if (arp->ar_op == htons(ARPOP_REQUEST) &&
     ip_route_input(skb, tip, sip, 0, dev) == 0) {

  rt = skb_rtable(skb);
  addr_type = rt->rt_type;

  if (addr_type == RTN_LOCAL) {
   int dont_send = 0;

   if (!dont_send)
    dont_send |= arp_ignore(in_dev,sip,tip);
   if (!dont_send && IN_DEV_ARPFILTER(in_dev))
    dont_send |= arp_filter(sip,tip,dev);
   if (!dont_send) {
    n = neigh_event_ns(&arp_tbl, sha, &sip, dev);
    if (n) {
     arp_send(ARPOP_REPLY,ETH_P_ARP,sip,dev,tip,sha,dev->dev_addr,sha);
     neigh_release(n);
    }
   }
   goto out;
  } else if (IN_DEV_FORWARD(in_dev)) {
   if (addr_type == RTN_UNICAST &&
       (arp_fwd_proxy(in_dev, dev, rt) ||
        arp_fwd_pvlan(in_dev, dev, rt, sip, tip) ||
        (rt->u.dst.dev != dev &&
         pneigh_lookup(&arp_tbl, net, &tip, dev, 0)))) {
    n = neigh_event_ns(&arp_tbl, sha, &sip, dev);
    if (n)
     neigh_release(n);

    if (NEIGH_CB(skb)->flags & LOCALLY_ENQUEUED ||
        skb->pkt_type == PACKET_HOST ||
        in_dev->arp_parms->proxy_delay == 0) {
     arp_send(ARPOP_REPLY,ETH_P_ARP,sip,dev,tip,sha,dev->dev_addr,sha);
    } else {
     pneigh_enqueue(&arp_tbl, in_dev->arp_parms, skb);
     in_dev_put(in_dev);
     return 0;
    }
    goto out;
   }
  }
 }



 n = __neigh_lookup(&arp_tbl, &sip, dev, 0);

 if (IPV4_DEVCONF_ALL(dev_net(dev), ARP_ACCEPT)) {




  if (n == ((void*)0) &&
      arp->ar_op == htons(ARPOP_REPLY) &&
      inet_addr_type(net, sip) == RTN_UNICAST)
   n = __neigh_lookup(&arp_tbl, &sip, dev, 1);
 }

 if (n) {
  int state = NUD_REACHABLE;
  int override;






  override = time_after(jiffies, n->updated + n->parms->locktime);




  if (arp->ar_op != htons(ARPOP_REPLY) ||
      skb->pkt_type != PACKET_HOST)
   state = NUD_STALE;
  neigh_update(n, sha, state, override ? NEIGH_UPDATE_F_OVERRIDE : 0);
  neigh_release(n);
 }

out:
 if (in_dev)
  in_dev_put(in_dev);
 consume_skb(skb);
 return 0;
}
