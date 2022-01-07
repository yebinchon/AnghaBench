
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phy_spd; scalar_t__ phy_link; scalar_t__ phy_dupx; } ;
union cvmx_gmxx_rxx_int_en {int u64; TYPE_1__ s; } ;
struct octeon_ethernet {scalar_t__ imode; scalar_t__ port; } ;
struct net_device {int dummy; } ;


 int CVMX_GMXX_RXX_INT_EN (int,int) ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_GMII ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_RGMII ;
 int INDEX (scalar_t__) ;
 int INTERFACE (scalar_t__) ;
 int OCTEON_IRQ_RML ;
 int cvm_oct_common_uninit (struct net_device*) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 int free_irq (int ,scalar_t__*) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 scalar_t__ number_rgmii_ports ;
 int octeon_is_simulation () ;

void cvm_oct_rgmii_uninit(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 cvm_oct_common_uninit(dev);





 if (((priv->imode == CVMX_HELPER_INTERFACE_MODE_GMII)
      && (priv->port == 0))
     || (priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII)) {

  if (!octeon_is_simulation()) {

   union cvmx_gmxx_rxx_int_en gmx_rx_int_en;
   int interface = INTERFACE(priv->port);
   int index = INDEX(priv->port);





   gmx_rx_int_en.u64 =
       cvmx_read_csr(CVMX_GMXX_RXX_INT_EN
       (index, interface));
   gmx_rx_int_en.s.phy_dupx = 0;
   gmx_rx_int_en.s.phy_link = 0;
   gmx_rx_int_en.s.phy_spd = 0;
   cvmx_write_csr(CVMX_GMXX_RXX_INT_EN(index, interface),
           gmx_rx_int_en.u64);
  }
 }


 number_rgmii_ports--;
 if (number_rgmii_ports == 0)
  free_irq(OCTEON_IRQ_RML, &number_rgmii_ports);
}
