
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loopbck1; } ;
union cvmx_pcsxx_control1_reg {void* u64; TYPE_1__ s; } ;
struct TYPE_4__ {int en; } ;
union cvmx_gmxx_xaui_ext_loopback {void* u64; TYPE_2__ s; } ;


 int CVMX_GMXX_XAUI_EXT_LOOPBACK (int) ;
 int CVMX_PCSXX_CONTROL1_REG (int) ;
 int __cvmx_helper_xaui_enable (int) ;
 int cvmx_helper_get_interface_num (int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

extern int __cvmx_helper_xaui_configure_loopback(int ipd_port,
       int enable_internal,
       int enable_external)
{
 int interface = cvmx_helper_get_interface_num(ipd_port);
 union cvmx_pcsxx_control1_reg pcsxx_control1_reg;
 union cvmx_gmxx_xaui_ext_loopback gmxx_xaui_ext_loopback;


 pcsxx_control1_reg.u64 =
     cvmx_read_csr(CVMX_PCSXX_CONTROL1_REG(interface));
 pcsxx_control1_reg.s.loopbck1 = enable_internal;
 cvmx_write_csr(CVMX_PCSXX_CONTROL1_REG(interface),
         pcsxx_control1_reg.u64);


 gmxx_xaui_ext_loopback.u64 =
     cvmx_read_csr(CVMX_GMXX_XAUI_EXT_LOOPBACK(interface));
 gmxx_xaui_ext_loopback.s.en = enable_external;
 cvmx_write_csr(CVMX_GMXX_XAUI_EXT_LOOPBACK(interface),
         gmxx_xaui_ext_loopback.u64);


 return __cvmx_helper_xaui_enable(interface);
}
