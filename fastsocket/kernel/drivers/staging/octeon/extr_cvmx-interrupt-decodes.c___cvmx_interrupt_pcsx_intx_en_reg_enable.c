
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_bad_en; int an_bad_en; int rxlock_en; int rxbad_en; int txbad_en; int txfifo_en; int txfifu_en; int an_err_en; } ;
union cvmx_pcsx_intx_en_reg {scalar_t__ u64; TYPE_1__ s; } ;


 int CVMX_PCSX_INTX_EN_REG (int,int) ;
 int CVMX_PCSX_INTX_REG (int,int) ;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

void __cvmx_interrupt_pcsx_intx_en_reg_enable(int index, int block)
{
 union cvmx_pcsx_intx_en_reg pcs_int_en_reg;
 cvmx_write_csr(CVMX_PCSX_INTX_REG(index, block),
         cvmx_read_csr(CVMX_PCSX_INTX_REG(index, block)));
 pcs_int_en_reg.u64 = 0;
 if (OCTEON_IS_MODEL(OCTEON_CN56XX)) {


  pcs_int_en_reg.s.sync_bad_en = 1;
  pcs_int_en_reg.s.an_bad_en = 1;
  pcs_int_en_reg.s.rxlock_en = 1;
  pcs_int_en_reg.s.rxbad_en = 1;

  pcs_int_en_reg.s.txbad_en = 1;
  pcs_int_en_reg.s.txfifo_en = 1;
  pcs_int_en_reg.s.txfifu_en = 1;
  pcs_int_en_reg.s.an_err_en = 1;


 }
 if (OCTEON_IS_MODEL(OCTEON_CN52XX)) {


  pcs_int_en_reg.s.sync_bad_en = 1;
  pcs_int_en_reg.s.an_bad_en = 1;
  pcs_int_en_reg.s.rxlock_en = 1;
  pcs_int_en_reg.s.rxbad_en = 1;

  pcs_int_en_reg.s.txbad_en = 1;
  pcs_int_en_reg.s.txfifo_en = 1;
  pcs_int_en_reg.s.txfifu_en = 1;
  pcs_int_en_reg.s.an_err_en = 1;


 }
 cvmx_write_csr(CVMX_PCSX_INTX_EN_REG(index, block), pcs_int_en_reg.u64);
}
