
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ip_tunnel {int gro_cells; } ;


 int free_netdev (struct net_device*) ;
 int gro_cells_destroy (int *) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ip_tunnel_dev_free(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 gro_cells_destroy(&tunnel->gro_cells);
 free_netdev(dev);
}
