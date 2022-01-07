
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int en; } ;
struct TYPE_4__ {int mode; } ;
union cvmx_gmxx_inf_mode {TYPE_2__ s; TYPE_1__ cn56xx; int u64; } ;
typedef int cvmx_helper_interface_mode_t ;
struct TYPE_6__ {scalar_t__ board_type; int board_rev_major; } ;


 scalar_t__ CVMX_BOARD_TYPE_CN3005_EVB_HS5 ;
 int CVMX_GMXX_INF_MODE (int) ;
 int CVMX_HELPER_INTERFACE_MODE_DISABLED ;
 int CVMX_HELPER_INTERFACE_MODE_GMII ;
 int CVMX_HELPER_INTERFACE_MODE_LOOP ;
 int CVMX_HELPER_INTERFACE_MODE_NPI ;
 int CVMX_HELPER_INTERFACE_MODE_PICMG ;
 int CVMX_HELPER_INTERFACE_MODE_RGMII ;
 int CVMX_HELPER_INTERFACE_MODE_SGMII ;
 int CVMX_HELPER_INTERFACE_MODE_SPI ;
 int CVMX_HELPER_INTERFACE_MODE_XAUI ;
 int OCTEON_CN30XX ;
 int OCTEON_CN31XX ;
 int OCTEON_CN38XX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_read_csr (int ) ;
 TYPE_3__* cvmx_sysinfo_get () ;

cvmx_helper_interface_mode_t cvmx_helper_interface_get_mode(int interface)
{
 union cvmx_gmxx_inf_mode mode;
 if (interface == 2)
  return CVMX_HELPER_INTERFACE_MODE_NPI;

 if (interface == 3) {
  if (OCTEON_IS_MODEL(OCTEON_CN56XX)
      || OCTEON_IS_MODEL(OCTEON_CN52XX))
   return CVMX_HELPER_INTERFACE_MODE_LOOP;
  else
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;
 }

 if (interface == 0
     && cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_CN3005_EVB_HS5
     && cvmx_sysinfo_get()->board_rev_major == 1) {
  return CVMX_HELPER_INTERFACE_MODE_GMII;
 }


 if ((interface == 1)
     && (OCTEON_IS_MODEL(OCTEON_CN31XX) || OCTEON_IS_MODEL(OCTEON_CN30XX)
  || OCTEON_IS_MODEL(OCTEON_CN50XX)
  || OCTEON_IS_MODEL(OCTEON_CN52XX)))
  return CVMX_HELPER_INTERFACE_MODE_DISABLED;

 mode.u64 = cvmx_read_csr(CVMX_GMXX_INF_MODE(interface));

 if (OCTEON_IS_MODEL(OCTEON_CN56XX) || OCTEON_IS_MODEL(OCTEON_CN52XX)) {
  switch (mode.cn56xx.mode) {
  case 0:
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;
  case 1:
   return CVMX_HELPER_INTERFACE_MODE_XAUI;
  case 2:
   return CVMX_HELPER_INTERFACE_MODE_SGMII;
  case 3:
   return CVMX_HELPER_INTERFACE_MODE_PICMG;
  default:
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;
  }
 } else {
  if (!mode.s.en)
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;

  if (mode.s.type) {
   if (OCTEON_IS_MODEL(OCTEON_CN38XX)
       || OCTEON_IS_MODEL(OCTEON_CN58XX))
    return CVMX_HELPER_INTERFACE_MODE_SPI;
   else
    return CVMX_HELPER_INTERFACE_MODE_GMII;
  } else
   return CVMX_HELPER_INTERFACE_MODE_RGMII;
 }
}
