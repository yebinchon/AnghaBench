
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int rtnl_link_ops; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct net_device*) ;
 struct net_device* __ip_tunnel_create (struct net*,int ,struct ip_tunnel_parm*) ;
 int ip_tunnel_add (struct ip_tunnel_net*,struct ip_tunnel*) ;
 int ip_tunnel_bind_dev (struct net_device*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct ip_tunnel *ip_tunnel_create(struct net *net,
       struct ip_tunnel_net *itn,
       struct ip_tunnel_parm *parms)
{
 struct ip_tunnel *nt, *fbt;
 struct net_device *dev;

 BUG_ON(!itn->fb_tunnel_dev);
 fbt = netdev_priv(itn->fb_tunnel_dev);
 dev = __ip_tunnel_create(net, itn->fb_tunnel_dev->rtnl_link_ops, parms);
 if (IS_ERR(dev))
  return ((void*)0);

 dev->mtu = ip_tunnel_bind_dev(dev);

 nt = netdev_priv(dev);
 ip_tunnel_add(itn, nt);
 return nt;
}
