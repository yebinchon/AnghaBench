
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phy_dupx; int phy_link; int phy_spd; } ;
union cvmx_gmxx_rxx_int_en {int u64; TYPE_2__ s; } ;
struct octeon_ethernet {scalar_t__ imode; scalar_t__ port; int poll; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_3__ {int (* ndo_stop ) (struct net_device*) ;} ;


 int CVMX_GMXX_RXX_INT_EN (int,int) ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_GMII ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_RGMII ;
 int INDEX (scalar_t__) ;
 int INTERFACE (scalar_t__) ;
 int IRQF_SHARED ;
 int OCTEON_IRQ_RML ;
 int cvm_oct_common_init (struct net_device*) ;
 int cvm_oct_rgmii_poll ;
 int cvm_oct_rgmii_rml_interrupt ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 scalar_t__ number_rgmii_ports ;
 int octeon_is_simulation () ;
 int request_irq (int ,int ,int ,char*,scalar_t__*) ;
 int stub1 (struct net_device*) ;

int cvm_oct_rgmii_init(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 int r;

 cvm_oct_common_init(dev);
 dev->netdev_ops->ndo_stop(dev);
 if (number_rgmii_ports == 0) {
  r = request_irq(OCTEON_IRQ_RML, cvm_oct_rgmii_rml_interrupt,
    IRQF_SHARED, "RGMII", &number_rgmii_ports);
 }
 number_rgmii_ports++;





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
   gmx_rx_int_en.s.phy_dupx = 1;
   gmx_rx_int_en.s.phy_link = 1;
   gmx_rx_int_en.s.phy_spd = 1;
   cvmx_write_csr(CVMX_GMXX_RXX_INT_EN(index, interface),
           gmx_rx_int_en.u64);
   priv->poll = cvm_oct_rgmii_poll;
  }
 }

 return 0;
}
