
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_2__ {int name; } ;
struct ip6_tnl {TYPE_1__ parms; struct net_device* dev; } ;


 struct ip6_tnl* netdev_priv (struct net_device*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static inline void
ip6_tnl_dev_init_gen(struct net_device *dev)
{
 struct ip6_tnl *t = netdev_priv(dev);
 t->dev = dev;
 strcpy(t->parms.name, dev->name);
}
