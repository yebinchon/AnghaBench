
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ (* mdio_read ) (struct net_device*,int,int) ;int (* mdio_write ) (struct net_device*,int,int,int) ;} ;
struct octeon_ethernet {TYPE_1__ mii_info; } ;
struct net_device {int dummy; } ;


 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,int,int,int) ;
 scalar_t__ stub2 (struct net_device*,int,int) ;
 scalar_t__ stub3 (struct net_device*,int,int) ;

__attribute__((used)) static unsigned long long cvm_oct_stats_read_switch(struct net_device *dev,
          int phy_id, int offset)
{
 struct octeon_ethernet *priv = netdev_priv(dev);

 priv->mii_info.mdio_write(dev, phy_id, 0x1d, 0xcc00 | offset);
 return ((uint64_t) priv->mii_info.
  mdio_read(dev, phy_id,
     0x1e) << 16) | (uint64_t) priv->mii_info.
     mdio_read(dev, phy_id, 0x1f);
}
