
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ lnk_st; } ;
union cvmx_pcsx_mrx_status_reg {TYPE_3__ s; void* u64; } ;
struct TYPE_10__ {scalar_t__ loopbck1; } ;
union cvmx_pcsx_mrx_control_reg {TYPE_1__ s; void* u64; } ;
struct TYPE_11__ {scalar_t__ mac_phy; scalar_t__ mode; } ;
union cvmx_pcsx_miscx_ctl_reg {TYPE_2__ s; void* u64; } ;
struct TYPE_13__ {int dup; int link_ok; int spd; scalar_t__ an_cpt; } ;
union cvmx_pcsx_anx_results_reg {TYPE_4__ s; void* u64; } ;
struct TYPE_14__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_15__ {TYPE_5__ s; scalar_t__ u64; } ;
typedef TYPE_6__ cvmx_helper_link_info_t ;
struct TYPE_16__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int CVMX_PCSX_ANX_RESULTS_REG (int,int) ;
 int CVMX_PCSX_MISCX_CTL_REG (int,int) ;
 int CVMX_PCSX_MRX_CONTROL_REG (int,int) ;
 int CVMX_PCSX_MRX_STATUS_REG (int,int) ;
 TYPE_6__ __cvmx_helper_board_link_get (int) ;
 scalar_t__ __cvmx_helper_sgmii_hardware_init_link (int,int) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 void* cvmx_read_csr (int ) ;
 TYPE_7__* cvmx_sysinfo_get () ;

cvmx_helper_link_info_t __cvmx_helper_sgmii_link_get(int ipd_port)
{
 cvmx_helper_link_info_t result;
 union cvmx_pcsx_miscx_ctl_reg pcs_misc_ctl_reg;
 int interface = cvmx_helper_get_interface_num(ipd_port);
 int index = cvmx_helper_get_interface_index_num(ipd_port);
 union cvmx_pcsx_mrx_control_reg pcsx_mrx_control_reg;

 result.u64 = 0;

 if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_SIM) {

  result.s.link_up = 1;
  result.s.full_duplex = 1;
  result.s.speed = 1000;
  return result;
 }

 pcsx_mrx_control_reg.u64 =
     cvmx_read_csr(CVMX_PCSX_MRX_CONTROL_REG(index, interface));
 if (pcsx_mrx_control_reg.s.loopbck1) {

  result.s.link_up = 1;
  result.s.full_duplex = 1;
  result.s.speed = 1000;
  return result;
 }

 pcs_misc_ctl_reg.u64 =
     cvmx_read_csr(CVMX_PCSX_MISCX_CTL_REG(index, interface));
 if (pcs_misc_ctl_reg.s.mode) {


 } else {
  union cvmx_pcsx_miscx_ctl_reg pcsx_miscx_ctl_reg;
  pcsx_miscx_ctl_reg.u64 =
      cvmx_read_csr(CVMX_PCSX_MISCX_CTL_REG(index, interface));
  if (pcsx_miscx_ctl_reg.s.mac_phy) {

   union cvmx_pcsx_mrx_status_reg pcsx_mrx_status_reg;
   union cvmx_pcsx_anx_results_reg pcsx_anx_results_reg;





   pcsx_mrx_status_reg.u64 =
       cvmx_read_csr(CVMX_PCSX_MRX_STATUS_REG
       (index, interface));
   if (pcsx_mrx_status_reg.s.lnk_st == 0) {
    if (__cvmx_helper_sgmii_hardware_init_link
        (interface, index) != 0)
     return result;
   }


   pcsx_anx_results_reg.u64 =
       cvmx_read_csr(CVMX_PCSX_ANX_RESULTS_REG
       (index, interface));
   if (pcsx_anx_results_reg.s.an_cpt) {




    result.s.full_duplex =
        pcsx_anx_results_reg.s.dup;
    result.s.link_up =
        pcsx_anx_results_reg.s.link_ok;
    switch (pcsx_anx_results_reg.s.spd) {
    case 0:
     result.s.speed = 10;
     break;
    case 1:
     result.s.speed = 100;
     break;
    case 2:
     result.s.speed = 1000;
     break;
    default:
     result.s.speed = 0;
     result.s.link_up = 0;
     break;
    }
   } else {




    result.s.speed = 0;
    result.s.link_up = 0;
   }
  } else {

   result = __cvmx_helper_board_link_get(ipd_port);
  }
 }
 return result;
}
