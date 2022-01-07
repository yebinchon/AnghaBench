
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_net {int ** tunnels_wc; struct net_device* fb_tunnel_dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct net* dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int ipip6_lock ;
 int ipip6_tunnel_del_prl (int ,int *) ;
 int ipip6_tunnel_unlink (struct sit_net*,int ) ;
 struct sit_net* net_generic (struct net*,int ) ;
 int netdev_priv (struct net_device*) ;
 int sit_net_id ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void ipip6_tunnel_uninit(struct net_device *dev)
{
 struct net *net = dev_net(dev);
 struct sit_net *sitn = net_generic(net, sit_net_id);

 if (dev == sitn->fb_tunnel_dev) {
  write_lock_bh(&ipip6_lock);
  sitn->tunnels_wc[0] = ((void*)0);
  write_unlock_bh(&ipip6_lock);
  dev_put(dev);
 } else {
  ipip6_tunnel_unlink(sitn, netdev_priv(dev));
  ipip6_tunnel_del_prl(netdev_priv(dev), ((void*)0));
  dev_put(dev);
 }
}
