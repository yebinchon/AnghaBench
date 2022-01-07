
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int full_duplex; int link_up; int speed; } ;
struct TYPE_9__ {TYPE_1__ s; scalar_t__ u64; } ;
typedef TYPE_2__ cvmx_helper_link_info_t ;
 TYPE_2__ __cvmx_helper_rgmii_link_get (int) ;
 TYPE_2__ __cvmx_helper_sgmii_link_get (int) ;
 TYPE_2__ __cvmx_helper_spi_link_get (int) ;
 TYPE_2__ __cvmx_helper_xaui_link_get (int) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 int cvmx_helper_interface_get_mode (int) ;
 int cvmx_helper_ports_on_interface (int) ;

cvmx_helper_link_info_t cvmx_helper_link_get(int ipd_port)
{
 cvmx_helper_link_info_t result;
 int interface = cvmx_helper_get_interface_num(ipd_port);
 int index = cvmx_helper_get_interface_index_num(ipd_port);



 result.u64 = 0;

 if (index >= cvmx_helper_ports_on_interface(interface))
  return result;

 switch (cvmx_helper_interface_get_mode(interface)) {
 case 137:
 case 133:

  break;
 case 128:
  result = __cvmx_helper_xaui_link_get(ipd_port);
  break;
 case 136:
  if (index == 0)
   result = __cvmx_helper_rgmii_link_get(ipd_port);
  else {
   result.s.full_duplex = 1;
   result.s.link_up = 1;
   result.s.speed = 1000;
  }
  break;
 case 131:
  result = __cvmx_helper_rgmii_link_get(ipd_port);
  break;
 case 129:
  result = __cvmx_helper_spi_link_get(ipd_port);
  break;
 case 130:
 case 132:
  result = __cvmx_helper_sgmii_link_get(ipd_port);
  break;
 case 134:
 case 135:

  break;
 }
 return result;
}
