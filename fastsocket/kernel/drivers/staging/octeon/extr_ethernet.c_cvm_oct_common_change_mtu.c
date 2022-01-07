
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int minlen; int maxlen; } ;
union cvmx_pip_frm_len_chkx {int u64; TYPE_1__ s; } ;
struct octeon_ethernet {int port; } ;
struct net_device {int mtu; } ;


 int CVMX_GMXX_RXX_FRM_MAX (int,int) ;
 int CVMX_GMXX_RXX_JABBER (int,int) ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ;
 int CVMX_PIP_FRM_LEN_CHKX (int) ;
 int EINVAL ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_helper_interface_get_mode (int) ;
 int cvmx_write_csr (int ,int) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 int interface = INTERFACE(priv->port);
 int index = INDEX(priv->port);



 int vlan_bytes = 0;






 if ((new_mtu + 14 + 4 + vlan_bytes < 64)
     || (new_mtu + 14 + 4 + vlan_bytes > 65392)) {
  pr_err("MTU must be between %d and %d.\n",
         64 - 14 - 4 - vlan_bytes, 65392 - 14 - 4 - vlan_bytes);
  return -EINVAL;
 }
 dev->mtu = new_mtu;

 if ((interface < 2)
     && (cvmx_helper_interface_get_mode(interface) !=
  CVMX_HELPER_INTERFACE_MODE_SPI)) {

  int max_packet = new_mtu + 14 + 4 + vlan_bytes;

  if (OCTEON_IS_MODEL(OCTEON_CN3XXX)
      || OCTEON_IS_MODEL(OCTEON_CN58XX)) {

   cvmx_write_csr(CVMX_GMXX_RXX_FRM_MAX(index, interface),
           max_packet);
  } else {




   union cvmx_pip_frm_len_chkx frm_len_chk;
   frm_len_chk.u64 = 0;
   frm_len_chk.s.minlen = 64;
   frm_len_chk.s.maxlen = max_packet;
   cvmx_write_csr(CVMX_PIP_FRM_LEN_CHKX(interface),
           frm_len_chk.u64);
  }





  cvmx_write_csr(CVMX_GMXX_RXX_JABBER(index, interface),
          (max_packet + 7) & ~7u);
 }
 return 0;
}
