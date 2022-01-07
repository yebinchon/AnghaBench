
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int pre_free; } ;
union cvmx_gmxx_rxx_frm_ctl {int u64; TYPE_4__ s; } ;
struct TYPE_10__ {int en; } ;
union cvmx_gmxx_prtx_cfg {int u64; TYPE_5__ s; } ;
struct TYPE_6__ {scalar_t__ en; int type; } ;
union cvmx_gmxx_inf_mode {TYPE_1__ s; void* u64; } ;
struct TYPE_7__ {void* prt_en; } ;
union cvmx_asxx_tx_prt_en {int u64; TYPE_2__ s; } ;
struct TYPE_8__ {void* prt_en; } ;
union cvmx_asxx_rx_prt_en {int u64; TYPE_3__ s; } ;
struct cvmx_sysinfo {int cpu_clock_hz; } ;


 int CVMX_ASXX_RX_CLK_SETX (int,int) ;
 int CVMX_ASXX_RX_PRT_EN (int) ;
 int CVMX_ASXX_TX_CLK_SETX (int,int) ;
 int CVMX_ASXX_TX_PRT_EN (int) ;
 int CVMX_GMXX_INF_MODE (int) ;
 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int CVMX_GMXX_RXX_FRM_CTL (int,int) ;
 int CVMX_GMXX_TXX_PAUSE_PKT_INTERVAL (int,int) ;
 int CVMX_GMXX_TXX_PAUSE_PKT_TIME (int,int) ;
 int OCTEON_CN38XX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_helper_errata_asx_pass1 (int,int,int ) ;
 int __cvmx_helper_setup_gmx (int,int) ;
 int __cvmx_interrupt_asxx_enable (int) ;
 int __cvmx_interrupt_gmxx_enable (int) ;
 void* cvmx_build_mask (int) ;
 int cvmx_helper_get_ipd_port (int,int) ;
 int cvmx_helper_link_autoconf (int ) ;
 int cvmx_helper_ports_on_interface (int) ;
 scalar_t__ cvmx_octeon_is_pass1 () ;
 void* cvmx_read_csr (int ) ;
 struct cvmx_sysinfo* cvmx_sysinfo_get () ;
 int cvmx_write_csr (int ,int) ;

int __cvmx_helper_rgmii_enable(int interface)
{
 int num_ports = cvmx_helper_ports_on_interface(interface);
 int port;
 struct cvmx_sysinfo *sys_info_ptr = cvmx_sysinfo_get();
 union cvmx_gmxx_inf_mode mode;
 union cvmx_asxx_tx_prt_en asx_tx;
 union cvmx_asxx_rx_prt_en asx_rx;

 mode.u64 = cvmx_read_csr(CVMX_GMXX_INF_MODE(interface));

 if (mode.s.en == 0)
  return -1;
 if ((OCTEON_IS_MODEL(OCTEON_CN38XX) ||
      OCTEON_IS_MODEL(OCTEON_CN58XX)) && mode.s.type == 1)

  return -1;


 asx_tx.u64 = 0;
 asx_tx.s.prt_en = cvmx_build_mask(num_ports);
 cvmx_write_csr(CVMX_ASXX_TX_PRT_EN(interface), asx_tx.u64);

 asx_rx.u64 = 0;
 asx_rx.s.prt_en = cvmx_build_mask(num_ports);
 cvmx_write_csr(CVMX_ASXX_RX_PRT_EN(interface), asx_rx.u64);


 for (port = 0; port < num_ports; port++) {



  if (cvmx_octeon_is_pass1())
   __cvmx_helper_errata_asx_pass1(interface, port,
             sys_info_ptr->
             cpu_clock_hz);
  else {





   union cvmx_gmxx_rxx_frm_ctl frm_ctl;
   frm_ctl.u64 =
       cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL
       (port, interface));

   frm_ctl.s.pre_free = 1;
   cvmx_write_csr(CVMX_GMXX_RXX_FRM_CTL(port, interface),
           frm_ctl.u64);
  }
  cvmx_write_csr(CVMX_GMXX_TXX_PAUSE_PKT_TIME(port, interface),
          20000);
  cvmx_write_csr(CVMX_GMXX_TXX_PAUSE_PKT_INTERVAL
          (port, interface), 19000);

  if (OCTEON_IS_MODEL(OCTEON_CN50XX)) {
   cvmx_write_csr(CVMX_ASXX_TX_CLK_SETX(port, interface),
           16);
   cvmx_write_csr(CVMX_ASXX_RX_CLK_SETX(port, interface),
           16);
  } else {
   cvmx_write_csr(CVMX_ASXX_TX_CLK_SETX(port, interface),
           24);
   cvmx_write_csr(CVMX_ASXX_RX_CLK_SETX(port, interface),
           24);
  }
 }

 __cvmx_helper_setup_gmx(interface, num_ports);


 for (port = 0; port < num_ports; port++) {
  union cvmx_gmxx_prtx_cfg gmx_cfg;
  cvmx_helper_link_autoconf(cvmx_helper_get_ipd_port
       (interface, port));
  gmx_cfg.u64 =
      cvmx_read_csr(CVMX_GMXX_PRTX_CFG(port, interface));
  gmx_cfg.s.en = 1;
  cvmx_write_csr(CVMX_GMXX_PRTX_CFG(port, interface),
          gmx_cfg.u64);
 }
 __cvmx_interrupt_asxx_enable(interface);
 __cvmx_interrupt_gmxx_enable(interface);

 return 0;
}
