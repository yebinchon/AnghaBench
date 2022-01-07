
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct ipip_net {struct ip_tunnel** tunnels_wc; } ;
struct iphdr {int version; int ihl; int protocol; } ;
struct TYPE_2__ {int name; struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; struct net_device* dev; } ;


 int IPPROTO_IPIP ;
 int dev_hold (struct net_device*) ;
 int dev_net (struct net_device*) ;
 int ipip_net_id ;
 struct ipip_net* net_generic (int ,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ipip_fb_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct iphdr *iph = &tunnel->parms.iph;
 struct ipip_net *ipn = net_generic(dev_net(dev), ipip_net_id);

 tunnel->dev = dev;
 strcpy(tunnel->parms.name, dev->name);

 iph->version = 4;
 iph->protocol = IPPROTO_IPIP;
 iph->ihl = 5;

 dev_hold(dev);
 ipn->tunnels_wc[0] = tunnel;
}
