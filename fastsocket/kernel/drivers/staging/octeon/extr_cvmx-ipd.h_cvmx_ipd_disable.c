
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ipd_en; } ;
union cvmx_ipd_ctl_status {int u64; TYPE_1__ s; } ;


 int CVMX_IPD_CTL_STATUS ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static inline void cvmx_ipd_disable(void)
{
 union cvmx_ipd_ctl_status ipd_reg;
 ipd_reg.u64 = cvmx_read_csr(CVMX_IPD_CTL_STATUS);
 ipd_reg.s.ipd_en = 0;
 cvmx_write_csr(CVMX_IPD_CTL_STATUS, ipd_reg.u64);
}
