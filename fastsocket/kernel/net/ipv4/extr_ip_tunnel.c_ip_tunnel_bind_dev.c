
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct net_device* dev; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;
struct net_device {scalar_t__ type; int hard_header_len; int needed_headroom; int mtu; scalar_t__ iflink; int flags; } ;
struct iphdr {int tos; int saddr; scalar_t__ daddr; int protocol; } ;
struct TYPE_6__ {scalar_t__ link; int o_key; struct iphdr iph; } ;
struct ip_tunnel {int hlen; TYPE_3__ parms; } ;
struct flowi {int dummy; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_DATA_LEN ;
 int IFF_POINTOPOINT ;
 int IS_ERR (struct rtable*) ;
 int LL_MAX_HEADER ;
 int RT_TOS (int ) ;
 struct net_device* __dev_get_by_index (int ,scalar_t__) ;
 int dev_net (struct net_device*) ;
 struct rtable* ip_route_output_tunnel (int ,struct flowi*,int ,scalar_t__,int ,int ,int ,scalar_t__) ;
 int ip_rt_put (struct rtable*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ip_tunnel_bind_dev(struct net_device *dev)
{
 struct net_device *tdev = ((void*)0);
 struct ip_tunnel *tunnel = netdev_priv(dev);
 const struct iphdr *iph;
 int hlen = LL_MAX_HEADER;
 int mtu = ETH_DATA_LEN;
 int t_hlen = tunnel->hlen + sizeof(struct iphdr);

 iph = &tunnel->parms.iph;


 if (iph->daddr) {
  struct flowi fl4;
  struct rtable *rt;

  rt = ip_route_output_tunnel(dev_net(dev), &fl4,
         tunnel->parms.iph.protocol,
         iph->daddr, iph->saddr,
         tunnel->parms.o_key,
         RT_TOS(iph->tos),
         tunnel->parms.link);
  if (!IS_ERR(rt)) {
   tdev = rt->u.dst.dev;
   ip_rt_put(rt);
  }
  if (dev->type != ARPHRD_ETHER)
   dev->flags |= IFF_POINTOPOINT;
 }

 if (!tdev && tunnel->parms.link)
  tdev = __dev_get_by_index(dev_net(dev), tunnel->parms.link);

 if (tdev) {
  hlen = tdev->hard_header_len + tdev->needed_headroom;
  mtu = tdev->mtu;
 }
 dev->iflink = tunnel->parms.link;

 dev->needed_headroom = t_hlen + hlen;
 mtu -= (dev->hard_header_len + t_hlen);

 if (mtu < 68)
  mtu = 68;

 return mtu;
}
