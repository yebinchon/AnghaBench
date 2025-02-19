
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int qos_mask; int eid; int pid; scalar_t__ static_p; } ;
union cvmx_pko_mem_port_ptrs {void* u64; TYPE_2__ s; } ;
struct TYPE_4__ {int en; } ;
union cvmx_gmxx_inf_mode {void* u64; TYPE_1__ s; } ;
struct TYPE_6__ {scalar_t__ hg2tx_en; } ;
union cvmx_gmxx_hg2_control {TYPE_3__ s; void* u64; } ;


 int CVMX_GMXX_HG2_CONTROL (int) ;
 int CVMX_GMXX_INF_MODE (int) ;
 int CVMX_PKO_MEM_PORT_PTRS ;
 int __cvmx_helper_setup_gmx (int,int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

int __cvmx_helper_xaui_probe(int interface)
{
 int i;
 union cvmx_gmxx_hg2_control gmx_hg2_control;
 union cvmx_gmxx_inf_mode mode;






 mode.u64 = cvmx_read_csr(CVMX_GMXX_INF_MODE(interface));
 mode.s.en = 1;
 cvmx_write_csr(CVMX_GMXX_INF_MODE(interface), mode.u64);

 __cvmx_helper_setup_gmx(interface, 1);







 for (i = 0; i < 16; i++) {
  union cvmx_pko_mem_port_ptrs pko_mem_port_ptrs;
  pko_mem_port_ptrs.u64 = 0;




  pko_mem_port_ptrs.s.static_p = 0;
  pko_mem_port_ptrs.s.qos_mask = 0xff;

  pko_mem_port_ptrs.s.eid = interface * 4;
  pko_mem_port_ptrs.s.pid = interface * 16 + i;
  cvmx_write_csr(CVMX_PKO_MEM_PORT_PTRS, pko_mem_port_ptrs.u64);
 }


 gmx_hg2_control.u64 = cvmx_read_csr(CVMX_GMXX_HG2_CONTROL(interface));
 if (gmx_hg2_control.s.hg2tx_en)
  return 16;
 else
  return 1;
}
