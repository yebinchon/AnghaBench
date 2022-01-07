
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {int ip_tnl_net_id; } ;


 struct net* dev_net (struct net_device*) ;
 int ip_tunnel_del (struct ip_tunnel*) ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

void ip_tunnel_uninit(struct net_device *dev)
{
 struct net *net = dev_net(dev);
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct ip_tunnel_net *itn;

 itn = net_generic(net, tunnel->ip_tnl_net_id);

 if (itn->fb_tunnel_dev != dev)
  ip_tunnel_del(netdev_priv(dev));
}
