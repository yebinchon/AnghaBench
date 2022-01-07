
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frmerr; int unxfrm; int nosync; int diperr; int datovr; int ovrbst; int calpar1; int calpar0; } ;
union cvmx_stxx_int_msk {scalar_t__ u64; TYPE_1__ s; } ;


 int CVMX_STXX_INT_MSK (int) ;
 int CVMX_STXX_INT_REG (int) ;
 int OCTEON_CN38XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

void __cvmx_interrupt_stxx_int_msk_enable(int index)
{
 union cvmx_stxx_int_msk stx_int_msk;
 cvmx_write_csr(CVMX_STXX_INT_REG(index),
         cvmx_read_csr(CVMX_STXX_INT_REG(index)));
 stx_int_msk.u64 = 0;
 if (OCTEON_IS_MODEL(OCTEON_CN38XX)) {

  stx_int_msk.s.frmerr = 1;
  stx_int_msk.s.unxfrm = 1;
  stx_int_msk.s.nosync = 1;
  stx_int_msk.s.diperr = 1;
  stx_int_msk.s.datovr = 1;
  stx_int_msk.s.ovrbst = 1;
  stx_int_msk.s.calpar1 = 1;
  stx_int_msk.s.calpar0 = 1;
 }
 if (OCTEON_IS_MODEL(OCTEON_CN58XX)) {

  stx_int_msk.s.frmerr = 1;
  stx_int_msk.s.unxfrm = 1;
  stx_int_msk.s.nosync = 1;
  stx_int_msk.s.diperr = 1;
  stx_int_msk.s.datovr = 1;
  stx_int_msk.s.ovrbst = 1;
  stx_int_msk.s.calpar1 = 1;
  stx_int_msk.s.calpar0 = 1;
 }
 cvmx_write_csr(CVMX_STXX_INT_MSK(index), stx_int_msk.u64);
}
