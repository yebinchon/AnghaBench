
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int calerr; int syncerr; int diperr; int tpaovr; int rsverr; int drwnng; int clserr; int spiovr; int abnorm; int prtnxa; } ;
union cvmx_spxx_int_msk {scalar_t__ u64; TYPE_1__ s; } ;


 int CVMX_SPXX_INT_MSK (int) ;
 int CVMX_SPXX_INT_REG (int) ;
 int OCTEON_CN38XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

void __cvmx_interrupt_spxx_int_msk_enable(int index)
{
 union cvmx_spxx_int_msk spx_int_msk;
 cvmx_write_csr(CVMX_SPXX_INT_REG(index),
         cvmx_read_csr(CVMX_SPXX_INT_REG(index)));
 spx_int_msk.u64 = 0;
 if (OCTEON_IS_MODEL(OCTEON_CN38XX)) {

  spx_int_msk.s.calerr = 1;
  spx_int_msk.s.syncerr = 1;
  spx_int_msk.s.diperr = 1;
  spx_int_msk.s.tpaovr = 1;
  spx_int_msk.s.rsverr = 1;
  spx_int_msk.s.drwnng = 1;
  spx_int_msk.s.clserr = 1;
  spx_int_msk.s.spiovr = 1;

  spx_int_msk.s.abnorm = 1;
  spx_int_msk.s.prtnxa = 1;
 }
 if (OCTEON_IS_MODEL(OCTEON_CN58XX)) {

  spx_int_msk.s.calerr = 1;
  spx_int_msk.s.syncerr = 1;
  spx_int_msk.s.diperr = 1;
  spx_int_msk.s.tpaovr = 1;
  spx_int_msk.s.rsverr = 1;
  spx_int_msk.s.drwnng = 1;
  spx_int_msk.s.clserr = 1;
  spx_int_msk.s.spiovr = 1;

  spx_int_msk.s.abnorm = 1;
  spx_int_msk.s.prtnxa = 1;
 }
 cvmx_write_csr(CVMX_SPXX_INT_MSK(index), spx_int_msk.u64);
}
