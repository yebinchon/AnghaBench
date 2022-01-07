
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; int features; scalar_t__ needed_headroom; } ;
struct iphdr {int dummy; } ;
struct TYPE_3__ {int protocol; } ;
struct TYPE_4__ {int o_flags; TYPE_1__ iph; } ;
struct ip_tunnel {TYPE_2__ parms; int hlen; } ;


 int ETH_DATA_LEN ;
 int GRE_FEATURES ;
 int IPPROTO_GRE ;
 scalar_t__ LL_MAX_HEADER ;
 int NETIF_F_GSO_SOFTWARE ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int TUNNEL_SEQ ;
 int gre_dev_ethtool_ops ;
 int ip_gre_calc_hlen (int) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void __gre_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel;

 tunnel = netdev_priv(dev);
 tunnel->hlen = ip_gre_calc_hlen(tunnel->parms.o_flags);
 tunnel->parms.iph.protocol = IPPROTO_GRE;

 dev->needed_headroom = LL_MAX_HEADER + sizeof(struct iphdr) + 4;
 dev->mtu = ETH_DATA_LEN - sizeof(struct iphdr) - 4;

 dev->features |= NETIF_F_NETNS_LOCAL | GRE_FEATURES;

 if (!(tunnel->parms.o_flags & TUNNEL_SEQ)) {

  dev->features |= NETIF_F_GSO_SOFTWARE;



  dev->features |= NETIF_F_LLTX;
 }
 SET_ETHTOOL_OPS(dev, &gre_dev_ethtool_ops);
}
