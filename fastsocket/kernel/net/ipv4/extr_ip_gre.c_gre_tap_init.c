
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __gre_tunnel_init (struct net_device*) ;
 int ip_tunnel_init (struct net_device*) ;

__attribute__((used)) static int gre_tap_init(struct net_device *dev)
{
 __gre_tunnel_init(dev);

 return ip_tunnel_init(dev);
}
