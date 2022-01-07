
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip6_tnl_net {int ** tnls_wc; struct net_device* fb_tnl_dev; } ;
struct ip6_tnl {int dummy; } ;


 struct net* dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int ip6_tnl_dst_reset (struct ip6_tnl*) ;
 int ip6_tnl_lock ;
 int ip6_tnl_net_id ;
 int ip6_tnl_unlink (struct ip6_tnl_net*,struct ip6_tnl*) ;
 struct ip6_tnl_net* net_generic (struct net*,int ) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void
ip6_tnl_dev_uninit(struct net_device *dev)
{
 struct ip6_tnl *t = netdev_priv(dev);
 struct net *net = dev_net(dev);
 struct ip6_tnl_net *ip6n = net_generic(net, ip6_tnl_net_id);

 if (dev == ip6n->fb_tnl_dev) {
  write_lock_bh(&ip6_tnl_lock);
  ip6n->tnls_wc[0] = ((void*)0);
  write_unlock_bh(&ip6_tnl_lock);
 } else {
  ip6_tnl_unlink(ip6n, t);
 }
 ip6_tnl_dst_reset(t);
 dev_put(dev);
}
