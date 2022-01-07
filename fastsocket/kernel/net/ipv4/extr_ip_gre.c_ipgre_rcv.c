
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tnl_ptk_info {scalar_t__ proto; int key; int flags; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 int ETH_P_TEB ;
 int PACKET_RCVD ;
 int PACKET_REJECT ;
 struct net* dev_net (TYPE_1__*) ;
 int gre_tap_net_id ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ip_tunnel* ip_tunnel_lookup (struct ip_tunnel_net*,int ,int ,int ,int ,int ) ;
 int ip_tunnel_rcv (struct ip_tunnel*,struct sk_buff*,struct tnl_ptk_info const*,int) ;
 int ipgre_net_id ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;

__attribute__((used)) static int ipgre_rcv(struct sk_buff *skb, const struct tnl_ptk_info *tpi)
{
 struct net *net = dev_net(skb->dev);
 struct ip_tunnel_net *itn;
 const struct iphdr *iph;
 struct ip_tunnel *tunnel;

 if (tpi->proto == htons(ETH_P_TEB))
  itn = net_generic(net, gre_tap_net_id);
 else
  itn = net_generic(net, ipgre_net_id);

 iph = ip_hdr(skb);
 tunnel = ip_tunnel_lookup(itn, skb->dev->ifindex, tpi->flags,
      iph->saddr, iph->daddr, tpi->key);

 if (tunnel) {
  ip_tunnel_rcv(tunnel, skb, tpi, 0);
  return PACKET_RCVD;
 }
 return PACKET_REJECT;
}
