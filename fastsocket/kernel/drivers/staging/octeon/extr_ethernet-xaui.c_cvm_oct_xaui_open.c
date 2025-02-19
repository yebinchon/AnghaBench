
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int en; } ;
union cvmx_gmxx_prtx_cfg {int u64; TYPE_2__ s; } ;
struct octeon_ethernet {int port; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int link_up; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_helper_link_info_t ;


 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 TYPE_3__ cvmx_helper_link_get (int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int octeon_is_simulation () ;

int cvm_oct_xaui_open(struct net_device *dev)
{
 union cvmx_gmxx_prtx_cfg gmx_cfg;
 struct octeon_ethernet *priv = netdev_priv(dev);
 int interface = INTERFACE(priv->port);
 int index = INDEX(priv->port);
 cvmx_helper_link_info_t link_info;

 gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
 gmx_cfg.s.en = 1;
 cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);

 if (!octeon_is_simulation()) {
  link_info = cvmx_helper_link_get(priv->port);
  if (!link_info.s.link_up)
   netif_carrier_off(dev);
 }
 return 0;
}
