
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int ether_setup (struct net_device*) ;
 int gre_tap_net_id ;
 int gre_tap_netdev_ops ;
 int ip_tunnel_setup (struct net_device*,int ) ;

__attribute__((used)) static void ipgre_tap_setup(struct net_device *dev)
{
 ether_setup(dev);
 dev->netdev_ops = &gre_tap_netdev_ops;
 ip_tunnel_setup(dev, gre_tap_net_id);
}
