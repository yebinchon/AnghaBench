
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_ethernet {int mii_info; } ;
struct net_device {int dummy; } ;


 int down (int *) ;
 int mdio_sem ;
 int mii_link_ok (int *) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static u32 cvm_oct_get_link(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 u32 ret;

 down(&mdio_sem);
 ret = mii_link_ok(&priv->mii_info);
 up(&mdio_sem);

 return ret;
}
