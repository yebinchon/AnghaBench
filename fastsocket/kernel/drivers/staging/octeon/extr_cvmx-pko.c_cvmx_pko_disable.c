
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ena_pko; } ;
union cvmx_pko_reg_flags {int u64; TYPE_1__ s; } ;


 int CVMX_PKO_REG_FLAGS ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

void cvmx_pko_disable(void)
{
 union cvmx_pko_reg_flags pko_reg_flags;
 pko_reg_flags.u64 = cvmx_read_csr(CVMX_PKO_REG_FLAGS);
 pko_reg_flags.s.ena_pko = 0;
 cvmx_write_csr(CVMX_PKO_REG_FLAGS, pko_reg_flags.u64);
}
