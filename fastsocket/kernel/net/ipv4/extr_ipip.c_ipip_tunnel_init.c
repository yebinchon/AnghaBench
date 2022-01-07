
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int broadcast; int dev_addr; int name; } ;
struct TYPE_3__ {int daddr; int saddr; } ;
struct TYPE_4__ {TYPE_1__ iph; int name; } ;
struct ip_tunnel {TYPE_2__ parms; struct net_device* dev; } ;


 int ipip_tunnel_bind_dev (struct net_device*) ;
 int memcpy (int ,int *,int) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ipip_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 tunnel->dev = dev;
 strcpy(tunnel->parms.name, dev->name);

 memcpy(dev->dev_addr, &tunnel->parms.iph.saddr, 4);
 memcpy(dev->broadcast, &tunnel->parms.iph.daddr, 4);

 ipip_tunnel_bind_dev(dev);
}
