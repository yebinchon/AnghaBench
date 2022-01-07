
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int link; int dup; int speed; } ;
union cvmx_pcsx_sgmx_an_adv_reg {void* u64; TYPE_5__ s; } ;
struct TYPE_10__ {scalar_t__ mac_phy; scalar_t__ mode; } ;
union cvmx_pcsx_miscx_ctl_reg {TYPE_4__ s; void* u64; } ;
struct TYPE_8__ {unsigned long long count; } ;
union cvmx_pcsx_linkx_timer_count_reg {void* u64; TYPE_2__ s; } ;
struct TYPE_9__ {int pause; int hfd; int fd; scalar_t__ rem_flt; } ;
union cvmx_pcsx_anx_adv_reg {void* u64; TYPE_3__ s; } ;
struct TYPE_7__ {scalar_t__ en; } ;
union cvmx_gmxx_prtx_cfg {void* u64; TYPE_1__ s; } ;
typedef unsigned long long uint64_t ;
struct TYPE_12__ {int cpu_clock_hz; } ;


 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int CVMX_PCSX_ANX_ADV_REG (int,int) ;
 int CVMX_PCSX_LINKX_TIMER_COUNT_REG (int,int) ;
 int CVMX_PCSX_MISCX_CTL_REG (int,int) ;
 int CVMX_PCSX_SGMX_AN_ADV_REG (int,int) ;
 void* cvmx_read_csr (int ) ;
 TYPE_6__* cvmx_sysinfo_get () ;
 int cvmx_write_csr (int ,void*) ;

__attribute__((used)) static int __cvmx_helper_sgmii_hardware_init_one_time(int interface, int index)
{
 const uint64_t clock_mhz = cvmx_sysinfo_get()->cpu_clock_hz / 1000000;
 union cvmx_pcsx_miscx_ctl_reg pcs_misc_ctl_reg;
 union cvmx_pcsx_linkx_timer_count_reg pcsx_linkx_timer_count_reg;
 union cvmx_gmxx_prtx_cfg gmxx_prtx_cfg;


 gmxx_prtx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
 gmxx_prtx_cfg.s.en = 0;
 cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmxx_prtx_cfg.u64);






 pcs_misc_ctl_reg.u64 =
     cvmx_read_csr(CVMX_PCSX_MISCX_CTL_REG(index, interface));
 pcsx_linkx_timer_count_reg.u64 =
     cvmx_read_csr(CVMX_PCSX_LINKX_TIMER_COUNT_REG(index, interface));
 if (pcs_misc_ctl_reg.s.mode) {

  pcsx_linkx_timer_count_reg.s.count =
      (10000ull * clock_mhz) >> 10;
 } else {

  pcsx_linkx_timer_count_reg.s.count =
      (1600ull * clock_mhz) >> 10;
 }
 cvmx_write_csr(CVMX_PCSX_LINKX_TIMER_COUNT_REG(index, interface),
         pcsx_linkx_timer_count_reg.u64);
 if (pcs_misc_ctl_reg.s.mode) {

  union cvmx_pcsx_anx_adv_reg pcsx_anx_adv_reg;
  pcsx_anx_adv_reg.u64 =
      cvmx_read_csr(CVMX_PCSX_ANX_ADV_REG(index, interface));
  pcsx_anx_adv_reg.s.rem_flt = 0;
  pcsx_anx_adv_reg.s.pause = 3;
  pcsx_anx_adv_reg.s.hfd = 1;
  pcsx_anx_adv_reg.s.fd = 1;
  cvmx_write_csr(CVMX_PCSX_ANX_ADV_REG(index, interface),
          pcsx_anx_adv_reg.u64);
 } else {
  union cvmx_pcsx_miscx_ctl_reg pcsx_miscx_ctl_reg;
  pcsx_miscx_ctl_reg.u64 =
      cvmx_read_csr(CVMX_PCSX_MISCX_CTL_REG(index, interface));
  if (pcsx_miscx_ctl_reg.s.mac_phy) {

   union cvmx_pcsx_sgmx_an_adv_reg pcsx_sgmx_an_adv_reg;
   pcsx_sgmx_an_adv_reg.u64 =
       cvmx_read_csr(CVMX_PCSX_SGMX_AN_ADV_REG
       (index, interface));
   pcsx_sgmx_an_adv_reg.s.link = 1;
   pcsx_sgmx_an_adv_reg.s.dup = 1;
   pcsx_sgmx_an_adv_reg.s.speed = 2;
   cvmx_write_csr(CVMX_PCSX_SGMX_AN_ADV_REG
           (index, interface),
           pcsx_sgmx_an_adv_reg.u64);
  } else {

  }
 }
 return 0;
}
