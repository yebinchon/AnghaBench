
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tnl_ptk_info {int flags; int seq; int key; int proto; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int protocol; } ;
struct TYPE_2__ {int o_flags; int o_key; } ;
struct ip_tunnel {int hlen; int o_seqno; TYPE_1__ parms; } ;
typedef int __be16 ;


 int TUNNEL_SEQ ;
 int gre_build_header (struct sk_buff*,struct tnl_ptk_info*,int ) ;
 int htonl (int ) ;
 int ip_tunnel_xmit (struct sk_buff*,struct net_device*,struct iphdr const*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void __gre_xmit(struct sk_buff *skb, struct net_device *dev,
         const struct iphdr *tnl_params,
         __be16 proto)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct tnl_ptk_info tpi;

 tpi.flags = tunnel->parms.o_flags;
 tpi.proto = proto;
 tpi.key = tunnel->parms.o_key;
 if (tunnel->parms.o_flags & TUNNEL_SEQ)
  tunnel->o_seqno++;
 tpi.seq = htonl(tunnel->o_seqno);


 gre_build_header(skb, &tpi, tunnel->hlen);

 ip_tunnel_xmit(skb, dev, tnl_params, tnl_params->protocol);
}
