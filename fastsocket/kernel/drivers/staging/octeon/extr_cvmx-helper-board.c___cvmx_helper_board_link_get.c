
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int status; int duplex; int speed; } ;
union cvmx_gmxx_rxx_rx_inbnd {TYPE_1__ s; int u64; } ;
struct TYPE_8__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_9__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef TYPE_3__ cvmx_helper_link_info_t ;
struct TYPE_10__ {int board_type; } ;
 int CVMX_GMXX_RXX_RX_INBND (int,int) ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_helper_board_get_mii_address (int) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 int cvmx_mdio_read (int,int,int) ;
 TYPE_3__ cvmx_override_board_link_get (int) ;
 int cvmx_read_csr (int ) ;
 TYPE_4__* cvmx_sysinfo_get () ;

cvmx_helper_link_info_t __cvmx_helper_board_link_get(int ipd_port)
{
 cvmx_helper_link_info_t result;
 int phy_addr;
 int is_broadcom_phy = 0;


 if (cvmx_override_board_link_get)
  return cvmx_override_board_link_get(ipd_port);


 result.u64 = 0;





 switch (cvmx_sysinfo_get()->board_type) {
 case 128:

  result.s.link_up = 1;
  result.s.full_duplex = 1;
  result.s.speed = 1000;
  return result;
 case 129:
 case 132:
 case 133:
 case 131:

  if (ipd_port == 1) {
   result.s.link_up = 1;
   result.s.full_duplex = 1;
   result.s.speed = 1000;
   return result;
  }

  break;
 case 130:

  if (ipd_port == 1) {
   result.s.link_up = 1;
   result.s.full_duplex = 1;
   result.s.speed = 1000;
   return result;
  } else
   is_broadcom_phy = 1;
  break;
 case 134:

  if (ipd_port == 2) {

   result.u64 = 0;
   return result;
  } else {

   result.s.link_up = 1;
   result.s.full_duplex = 1;
   result.s.speed = 1000;
   return result;
  }
  break;
 }

 phy_addr = cvmx_helper_board_get_mii_address(ipd_port);
 if (phy_addr != -1) {
  if (is_broadcom_phy) {





   int phy_status =
       cvmx_mdio_read(phy_addr >> 8, phy_addr & 0xff,
        0x19);
   switch ((phy_status >> 8) & 0x7) {
   case 0:
    result.u64 = 0;
    break;
   case 1:
    result.s.link_up = 1;
    result.s.full_duplex = 0;
    result.s.speed = 10;
    break;
   case 2:
    result.s.link_up = 1;
    result.s.full_duplex = 1;
    result.s.speed = 10;
    break;
   case 3:
    result.s.link_up = 1;
    result.s.full_duplex = 0;
    result.s.speed = 100;
    break;
   case 4:
    result.s.link_up = 1;
    result.s.full_duplex = 1;
    result.s.speed = 100;
    break;
   case 5:
    result.s.link_up = 1;
    result.s.full_duplex = 1;
    result.s.speed = 100;
    break;
   case 6:
    result.s.link_up = 1;
    result.s.full_duplex = 0;
    result.s.speed = 1000;
    break;
   case 7:
    result.s.link_up = 1;
    result.s.full_duplex = 1;
    result.s.speed = 1000;
    break;
   }
  } else {
   int phy_status =
       cvmx_mdio_read(phy_addr >> 8, phy_addr & 0xff, 17);







   if ((phy_status & (1 << 11)) == 0) {
    int auto_status =
        cvmx_mdio_read(phy_addr >> 8,
         phy_addr & 0xff, 0);
    if ((auto_status & (1 << 12)) == 0)
     phy_status |= 1 << 11;
   }






   if (phy_status & (1 << 11)) {
    result.s.link_up = 1;
    result.s.full_duplex = ((phy_status >> 13) & 1);
    switch ((phy_status >> 14) & 3) {
    case 0:
     result.s.speed = 10;
     break;
    case 1:
     result.s.speed = 100;
     break;
    case 2:
     result.s.speed = 1000;
     break;
    case 3:
     result.u64 = 0;
     break;
    }
   }
  }
 } else if (OCTEON_IS_MODEL(OCTEON_CN3XXX)
     || OCTEON_IS_MODEL(OCTEON_CN58XX)
     || OCTEON_IS_MODEL(OCTEON_CN50XX)) {







  union cvmx_gmxx_rxx_rx_inbnd inband_status;
  int interface = cvmx_helper_get_interface_num(ipd_port);
  int index = cvmx_helper_get_interface_index_num(ipd_port);
  inband_status.u64 =
      cvmx_read_csr(CVMX_GMXX_RXX_RX_INBND(index, interface));

  result.s.link_up = inband_status.s.status;
  result.s.full_duplex = inband_status.s.duplex;
  switch (inband_status.s.speed) {
  case 0:
   result.s.speed = 10;
   break;
  case 1:
   result.s.speed = 100;
   break;
  case 2:
   result.s.speed = 1000;
   break;
  case 3:
   result.u64 = 0;
   break;
  }
 } else {






  result.u64 = 0;
 }


 if (!result.s.link_up)
  result.u64 = 0;

 return result;
}
