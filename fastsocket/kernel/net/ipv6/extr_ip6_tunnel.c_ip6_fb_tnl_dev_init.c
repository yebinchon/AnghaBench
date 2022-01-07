
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip6_tnl_net {struct ip6_tnl** tnls_wc; } ;
struct TYPE_2__ {int proto; } ;
struct ip6_tnl {TYPE_1__ parms; } ;


 int IPPROTO_IPV6 ;
 int dev_hold (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int ip6_tnl_dev_init_gen (struct net_device*) ;
 int ip6_tnl_net_id ;
 struct ip6_tnl_net* net_generic (struct net*,int ) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ip6_fb_tnl_dev_init(struct net_device *dev)
{
 struct ip6_tnl *t = netdev_priv(dev);
 struct net *net = dev_net(dev);
 struct ip6_tnl_net *ip6n = net_generic(net, ip6_tnl_net_id);

 ip6_tnl_dev_init_gen(dev);
 t->parms.proto = IPPROTO_IPV6;
 dev_hold(dev);
 ip6n->tnls_wc[0] = t;
}
