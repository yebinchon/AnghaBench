
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ethernet {int mii_info; } ;
struct net_device {int dummy; } ;


 int down (int *) ;
 int mdio_sem ;
 int mii_nway_restart (int *) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int cvm_oct_nway_reset(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 int ret;

 down(&mdio_sem);
 ret = mii_nway_restart(&priv->mii_info);
 up(&mdio_sem);

 return ret;
}
