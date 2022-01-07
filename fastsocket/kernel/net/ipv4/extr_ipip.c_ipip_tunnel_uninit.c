
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipip_net {int ** tunnels_wc; struct net_device* fb_tunnel_dev; } ;


 struct net* dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int ipip_lock ;
 int ipip_net_id ;
 int ipip_tunnel_unlink (struct ipip_net*,int ) ;
 struct ipip_net* net_generic (struct net*,int ) ;
 int netdev_priv (struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void ipip_tunnel_uninit(struct net_device *dev)
{
 struct net *net = dev_net(dev);
 struct ipip_net *ipn = net_generic(net, ipip_net_id);

 if (dev == ipn->fb_tunnel_dev) {
  write_lock_bh(&ipip_lock);
  ipn->tunnels_wc[0] = ((void*)0);
  write_unlock_bh(&ipip_lock);
 } else
  ipip_tunnel_unlink(ipn, netdev_priv(dev));
 dev_put(dev);
}
