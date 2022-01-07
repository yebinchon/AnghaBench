
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ncb_nxa; int pko_nxa; int undflw; } ;
union cvmx_gmxx_tx_int_en {scalar_t__ u64; TYPE_3__ s; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ en; } ;
struct TYPE_4__ {int mode; } ;
union cvmx_gmxx_inf_mode {TYPE_2__ s; TYPE_1__ cn56xx; int u64; } ;


 int CVMX_GMXX_INF_MODE (int) ;
 int CVMX_GMXX_TX_INT_EN (int) ;
 int OCTEON_CN38XX ;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_interrupt_gmxx_rxx_int_en_enable (int,int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

void __cvmx_interrupt_gmxx_enable(int interface)
{
 union cvmx_gmxx_inf_mode mode;
 union cvmx_gmxx_tx_int_en gmx_tx_int_en;
 int num_ports;
 int index;

 mode.u64 = cvmx_read_csr(CVMX_GMXX_INF_MODE(interface));

 if (OCTEON_IS_MODEL(OCTEON_CN56XX) || OCTEON_IS_MODEL(OCTEON_CN52XX)) {
  if (mode.s.en) {
   switch (mode.cn56xx.mode) {
   case 1:
    num_ports = 1;
    break;
   case 2:
   case 3:
    num_ports = 4;
    break;
   default:
    num_ports = 0;
    break;
   }
  } else
   num_ports = 0;
 } else {
  if (mode.s.en) {
   if (OCTEON_IS_MODEL(OCTEON_CN38XX)
       || OCTEON_IS_MODEL(OCTEON_CN58XX)) {





    if (mode.s.type)
     num_ports = 1;
    else
     num_ports = 4;
   } else {





    if (mode.s.type)
     num_ports = 2;
    else
     num_ports = 3;
   }
  } else
   num_ports = 0;
 }

 gmx_tx_int_en.u64 = 0;
 if (num_ports) {
  if (OCTEON_IS_MODEL(OCTEON_CN38XX)
      || OCTEON_IS_MODEL(OCTEON_CN58XX))
   gmx_tx_int_en.s.ncb_nxa = 1;
  gmx_tx_int_en.s.pko_nxa = 1;
 }
 gmx_tx_int_en.s.undflw = (1 << num_ports) - 1;
 cvmx_write_csr(CVMX_GMXX_TX_INT_EN(interface), gmx_tx_int_en.u64);
 for (index = 0; index < num_ports; index++)
  __cvmx_interrupt_gmxx_rxx_int_en_enable(index, interface);
}
