
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; int destructor; } ;
struct iphdr {int version; int ihl; } ;
struct TYPE_2__ {int name; struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; struct net_device* dev; int gro_cells; } ;


 int gro_cells_init (int *,struct net_device*) ;
 int ip_tunnel_dev_free ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int strcpy (int ,int ) ;

int ip_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct iphdr *iph = &tunnel->parms.iph;
 int err;

 dev->destructor = ip_tunnel_dev_free;

 err = gro_cells_init(&tunnel->gro_cells, dev);
 if (err)
  return err;

 tunnel->dev = dev;
 strcpy(tunnel->parms.name, dev->name);
 iph->version = 4;
 iph->ihl = 5;

 return 0;
}
