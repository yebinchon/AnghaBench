
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipd_en; int len_m8; } ;
union cvmx_ipd_ctl_status {int u64; TYPE_1__ s; } ;


 int CVMX_IPD_CTL_STATUS ;
 int OCTEON_CN38XX_PASS2 ;
 int OCTEON_IS_MODEL (int ) ;
 int TRUE ;
 int cvmx_dprintf (char*) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static inline void cvmx_ipd_enable(void)
{
 union cvmx_ipd_ctl_status ipd_reg;
 ipd_reg.u64 = cvmx_read_csr(CVMX_IPD_CTL_STATUS);
 if (ipd_reg.s.ipd_en) {
  cvmx_dprintf
      ("Warning: Enabling IPD when IPD already enabled.\n");
 }
 ipd_reg.s.ipd_en = 1;




 cvmx_write_csr(CVMX_IPD_CTL_STATUS, ipd_reg.u64);
}
