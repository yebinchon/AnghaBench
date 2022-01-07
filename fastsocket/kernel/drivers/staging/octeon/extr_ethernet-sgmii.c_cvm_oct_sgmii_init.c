
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_ethernet {int poll; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {int (* ndo_stop ) (struct net_device*) ;} ;


 int cvm_oct_common_init (struct net_device*) ;
 int cvm_oct_sgmii_poll ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int octeon_is_simulation () ;
 int stub1 (struct net_device*) ;

int cvm_oct_sgmii_init(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 cvm_oct_common_init(dev);
 dev->netdev_ops->ndo_stop(dev);
 if (!octeon_is_simulation())
  priv->poll = cvm_oct_sgmii_poll;


 return 0;
}
