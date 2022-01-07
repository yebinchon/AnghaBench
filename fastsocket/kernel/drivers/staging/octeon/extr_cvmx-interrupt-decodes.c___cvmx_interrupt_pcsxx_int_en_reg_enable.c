
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int algnlos_en; int synlos_en; int bitlckls_en; int rxsynbad_en; int rxbad_en; int txflt_en; } ;
union cvmx_pcsxx_int_en_reg {scalar_t__ u64; TYPE_1__ s; } ;


 int CVMX_PCSXX_INT_EN_REG (int) ;
 int CVMX_PCSXX_INT_REG (int) ;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

void __cvmx_interrupt_pcsxx_int_en_reg_enable(int index)
{
 union cvmx_pcsxx_int_en_reg pcsx_int_en_reg;
 cvmx_write_csr(CVMX_PCSXX_INT_REG(index),
         cvmx_read_csr(CVMX_PCSXX_INT_REG(index)));
 pcsx_int_en_reg.u64 = 0;
 if (OCTEON_IS_MODEL(OCTEON_CN56XX)) {

  pcsx_int_en_reg.s.algnlos_en = 1;
  pcsx_int_en_reg.s.synlos_en = 1;
  pcsx_int_en_reg.s.bitlckls_en = 1;
  pcsx_int_en_reg.s.rxsynbad_en = 1;
  pcsx_int_en_reg.s.rxbad_en = 1;
  pcsx_int_en_reg.s.txflt_en = 1;
 }
 if (OCTEON_IS_MODEL(OCTEON_CN52XX)) {

  pcsx_int_en_reg.s.algnlos_en = 1;
  pcsx_int_en_reg.s.synlos_en = 1;
  pcsx_int_en_reg.s.bitlckls_en = 0;
  pcsx_int_en_reg.s.rxsynbad_en = 1;
  pcsx_int_en_reg.s.rxbad_en = 1;
  pcsx_int_en_reg.s.txflt_en = 1;
 }
 cvmx_write_csr(CVMX_PCSXX_INT_EN_REG(index), pcsx_int_en_reg.u64);
}
