
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ en; } ;
union cvmx_gmxx_prtx_cfg {int u64; TYPE_1__ s; } ;
struct octeon_ethernet {int port; } ;
struct net_device {int dummy; } ;


 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;

int cvm_oct_rgmii_stop(struct net_device *dev)
{
 union cvmx_gmxx_prtx_cfg gmx_cfg;
 struct octeon_ethernet *priv = netdev_priv(dev);
 int interface = INTERFACE(priv->port);
 int index = INDEX(priv->port);

 gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
 gmx_cfg.s.en = 0;
 cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);
 return 0;
}
