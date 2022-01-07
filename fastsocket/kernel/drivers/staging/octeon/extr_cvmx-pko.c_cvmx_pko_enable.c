
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ena_pko; int ena_dwb; int store_be; } ;
union cvmx_pko_reg_flags {int u64; TYPE_1__ s; } ;


 int CVMX_PKO_REG_FLAGS ;
 int cvmx_dprintf (char*) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

void cvmx_pko_enable(void)
{
 union cvmx_pko_reg_flags flags;

 flags.u64 = cvmx_read_csr(CVMX_PKO_REG_FLAGS);
 if (flags.s.ena_pko)
  cvmx_dprintf
      ("Warning: Enabling PKO when PKO already enabled.\n");

 flags.s.ena_dwb = 1;
 flags.s.ena_pko = 1;




 flags.s.store_be = 1;
 cvmx_write_csr(CVMX_PKO_REG_FLAGS, flags.u64);
}
