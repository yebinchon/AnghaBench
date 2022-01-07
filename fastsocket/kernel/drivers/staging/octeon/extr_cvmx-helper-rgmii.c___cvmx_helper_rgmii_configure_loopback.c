
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int en; int duplex; int slottime; int speed; } ;
union cvmx_gmxx_prtx_cfg {int u64; TYPE_2__ s; } ;
struct TYPE_3__ {int int_loop; int ext_loop; } ;
union cvmx_asxx_prt_loop {int u64; TYPE_1__ s; } ;
typedef int uint64_t ;


 int CVMX_ASXX_PRT_LOOP (int) ;
 int CVMX_ASXX_RX_PRT_EN (int) ;
 int CVMX_ASXX_TX_PRT_EN (int) ;
 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int CVMX_GMXX_TXX_BURST (int,int) ;
 int CVMX_GMXX_TXX_CLK (int,int) ;
 int CVMX_GMXX_TXX_SLOT (int,int) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;

int __cvmx_helper_rgmii_configure_loopback(int ipd_port, int enable_internal,
        int enable_external)
{
 int interface = cvmx_helper_get_interface_num(ipd_port);
 int index = cvmx_helper_get_interface_index_num(ipd_port);
 int original_enable;
 union cvmx_gmxx_prtx_cfg gmx_cfg;
 union cvmx_asxx_prt_loop asxx_prt_loop;


 gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
 original_enable = gmx_cfg.s.en;

 gmx_cfg.s.en = 0;
 if (enable_internal) {

  gmx_cfg.s.duplex = 1;
  gmx_cfg.s.slottime = 1;
  gmx_cfg.s.speed = 1;
  cvmx_write_csr(CVMX_GMXX_TXX_CLK(index, interface), 1);
  cvmx_write_csr(CVMX_GMXX_TXX_SLOT(index, interface), 0x200);
  cvmx_write_csr(CVMX_GMXX_TXX_BURST(index, interface), 0x2000);
 }
 cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);


 asxx_prt_loop.u64 = cvmx_read_csr(CVMX_ASXX_PRT_LOOP(interface));
 if (enable_internal)
  asxx_prt_loop.s.int_loop |= 1 << index;
 else
  asxx_prt_loop.s.int_loop &= ~(1 << index);
 if (enable_external)
  asxx_prt_loop.s.ext_loop |= 1 << index;
 else
  asxx_prt_loop.s.ext_loop &= ~(1 << index);
 cvmx_write_csr(CVMX_ASXX_PRT_LOOP(interface), asxx_prt_loop.u64);


 if (enable_internal) {
  uint64_t tmp;
  tmp = cvmx_read_csr(CVMX_ASXX_TX_PRT_EN(interface));
  cvmx_write_csr(CVMX_ASXX_TX_PRT_EN(interface),
          (1 << index) | tmp);
  tmp = cvmx_read_csr(CVMX_ASXX_RX_PRT_EN(interface));
  cvmx_write_csr(CVMX_ASXX_RX_PRT_EN(interface),
          (1 << index) | tmp);
  original_enable = 1;
 }


 gmx_cfg.s.en = original_enable;
 cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);
 return 0;
}
