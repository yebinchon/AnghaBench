
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enable; } ;
union cvmx_pko_reg_crc_enable {int u64; TYPE_1__ s; } ;
struct TYPE_4__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int CVMX_PKO_REG_CRC_ENABLE ;
 int __cvmx_helper_setup_gmx (int,int) ;
 int cvmx_read_csr (int ) ;
 scalar_t__ cvmx_spi4000_is_present (int) ;
 TYPE_2__* cvmx_sysinfo_get () ;
 int cvmx_write_csr (int ,int ) ;

int __cvmx_helper_spi_probe(int interface)
{
 int num_ports = 0;

 if ((cvmx_sysinfo_get()->board_type != CVMX_BOARD_TYPE_SIM) &&
     cvmx_spi4000_is_present(interface)) {
  num_ports = 10;
 } else {
  union cvmx_pko_reg_crc_enable enable;
  num_ports = 16;






  enable.u64 = cvmx_read_csr(CVMX_PKO_REG_CRC_ENABLE);
  enable.s.enable |= 0xffff << (interface * 16);
  cvmx_write_csr(CVMX_PKO_REG_CRC_ENABLE, enable.u64);
 }
 __cvmx_helper_setup_gmx(interface, num_ports);
 return num_ports;
}
