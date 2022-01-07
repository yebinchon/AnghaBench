
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sit_net {struct ip_tunnel** tunnels_wc; } ;
struct net_device {int name; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; int ttl; int protocol; } ;
struct TYPE_2__ {int name; struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; struct net_device* dev; } ;


 int IPPROTO_IPV6 ;
 int dev_hold (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 struct sit_net* net_generic (struct net*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int sit_net_id ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ipip6_fb_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct iphdr *iph = &tunnel->parms.iph;
 struct net *net = dev_net(dev);
 struct sit_net *sitn = net_generic(net, sit_net_id);

 tunnel->dev = dev;
 strcpy(tunnel->parms.name, dev->name);

 iph->version = 4;
 iph->protocol = IPPROTO_IPV6;
 iph->ihl = 5;
 iph->ttl = 64;

 dev_hold(dev);
 sitn->tunnels_wc[0] = tunnel;
}
