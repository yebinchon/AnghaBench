
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ip6_tnl {int dummy; } ;


 int ip6_tnl_dev_init_gen (struct net_device*) ;
 int ip6_tnl_link_config (struct ip6_tnl*) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ip6_tnl_dev_init(struct net_device *dev)
{
 struct ip6_tnl *t = netdev_priv(dev);
 ip6_tnl_dev_init_gen(dev);
 ip6_tnl_link_config(t);
}
