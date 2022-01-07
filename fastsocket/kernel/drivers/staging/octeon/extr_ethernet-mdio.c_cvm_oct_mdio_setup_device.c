
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; int phy_id_mask; int supports_gmii; int reg_num_mask; int mdio_write; int mdio_read; struct net_device* dev; } ;
struct octeon_ethernet {TYPE_1__ mii_info; int port; } ;
struct net_device {int dummy; } ;


 int cvm_oct_mdio_dummy_read ;
 int cvm_oct_mdio_dummy_write ;
 int cvm_oct_mdio_read ;
 int cvm_oct_mdio_write ;
 int cvmx_helper_board_get_mii_address (int ) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;

int cvm_oct_mdio_setup_device(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 int phy_id = cvmx_helper_board_get_mii_address(priv->port);
 if (phy_id != -1) {
  priv->mii_info.dev = dev;
  priv->mii_info.phy_id = phy_id;
  priv->mii_info.phy_id_mask = 0xff;
  priv->mii_info.supports_gmii = 1;
  priv->mii_info.reg_num_mask = 0x1f;
  priv->mii_info.mdio_read = cvm_oct_mdio_read;
  priv->mii_info.mdio_write = cvm_oct_mdio_write;
 } else {


  priv->mii_info.mdio_read = cvm_oct_mdio_dummy_read;
  priv->mii_info.mdio_write = cvm_oct_mdio_dummy_write;
 }
 return 0;
}
