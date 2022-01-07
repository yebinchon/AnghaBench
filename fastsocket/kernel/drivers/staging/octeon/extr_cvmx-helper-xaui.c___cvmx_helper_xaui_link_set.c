
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ls; } ;
union cvmx_gmxx_tx_xaui_ctl {TYPE_2__ s; void* u64; } ;
struct TYPE_8__ {scalar_t__ status; } ;
union cvmx_gmxx_rx_xaui_ctl {TYPE_3__ s; void* u64; } ;
struct TYPE_6__ {int link_up; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_helper_link_info_t ;


 int CVMX_GMXX_RX_XAUI_CTL (int) ;
 int CVMX_GMXX_TX_XAUI_CTL (int) ;
 int __cvmx_helper_xaui_enable (int) ;
 int cvmx_helper_get_interface_num (int) ;
 void* cvmx_read_csr (int ) ;

int __cvmx_helper_xaui_link_set(int ipd_port, cvmx_helper_link_info_t link_info)
{
 int interface = cvmx_helper_get_interface_num(ipd_port);
 union cvmx_gmxx_tx_xaui_ctl gmxx_tx_xaui_ctl;
 union cvmx_gmxx_rx_xaui_ctl gmxx_rx_xaui_ctl;

 gmxx_tx_xaui_ctl.u64 = cvmx_read_csr(CVMX_GMXX_TX_XAUI_CTL(interface));
 gmxx_rx_xaui_ctl.u64 = cvmx_read_csr(CVMX_GMXX_RX_XAUI_CTL(interface));


 if (!link_info.s.link_up)
  return 0;


 if ((gmxx_tx_xaui_ctl.s.ls == 0) && (gmxx_rx_xaui_ctl.s.status == 0))
  return 0;


 return __cvmx_helper_xaui_enable(interface);
}
