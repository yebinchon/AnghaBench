
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ethernet {int mii_info; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int down (int *) ;
 int mdio_sem ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int cvm_oct_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 int ret;

 down(&mdio_sem);
 ret = mii_ethtool_gset(&priv->mii_info, cmd);
 up(&mdio_sem);

 return ret;
}
