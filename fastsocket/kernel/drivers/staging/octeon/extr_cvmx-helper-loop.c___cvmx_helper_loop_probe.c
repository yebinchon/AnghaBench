
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ minerr_en; scalar_t__ maxerr_en; } ;
union cvmx_pip_prt_cfgx {void* u64; TYPE_1__ s; } ;
struct TYPE_4__ {scalar_t__ port_bit2; } ;
union cvmx_ipd_sub_port_fcs {void* u64; TYPE_2__ s; } ;


 int CVMX_IPD_SUB_PORT_FCS ;
 int CVMX_PIP_PRT_CFGX (int) ;
 int cvmx_helper_get_ipd_port (int,int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

int __cvmx_helper_loop_probe(int interface)
{
 union cvmx_ipd_sub_port_fcs ipd_sub_port_fcs;
 int num_ports = 4;
 int port;



 for (port = 0; port < num_ports; port++) {
  union cvmx_pip_prt_cfgx port_cfg;
  int ipd_port = cvmx_helper_get_ipd_port(interface, port);
  port_cfg.u64 = cvmx_read_csr(CVMX_PIP_PRT_CFGX(ipd_port));
  port_cfg.s.maxerr_en = 0;
  port_cfg.s.minerr_en = 0;
  cvmx_write_csr(CVMX_PIP_PRT_CFGX(ipd_port), port_cfg.u64);
 }


 ipd_sub_port_fcs.u64 = cvmx_read_csr(CVMX_IPD_SUB_PORT_FCS);
 ipd_sub_port_fcs.s.port_bit2 = 0;
 cvmx_write_csr(CVMX_IPD_SUB_PORT_FCS, ipd_sub_port_fcs.u64);
 return num_ports;
}
