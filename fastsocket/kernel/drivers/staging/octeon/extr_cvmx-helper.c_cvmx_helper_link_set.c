
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int u64; } ;
typedef TYPE_1__ cvmx_helper_link_info_t ;
struct TYPE_9__ {int u64; } ;
 int __cvmx_helper_rgmii_link_set (int,TYPE_1__) ;
 int __cvmx_helper_sgmii_link_set (int,TYPE_1__) ;
 int __cvmx_helper_spi_link_set (int,TYPE_1__) ;
 int __cvmx_helper_xaui_link_set (int,TYPE_1__) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 int cvmx_helper_interface_get_mode (int) ;
 int cvmx_helper_ports_on_interface (int) ;
 TYPE_2__* port_link_info ;

int cvmx_helper_link_set(int ipd_port, cvmx_helper_link_info_t link_info)
{
 int result = -1;
 int interface = cvmx_helper_get_interface_num(ipd_port);
 int index = cvmx_helper_get_interface_index_num(ipd_port);

 if (index >= cvmx_helper_ports_on_interface(interface))
  return -1;

 switch (cvmx_helper_interface_get_mode(interface)) {
 case 137:
 case 133:
  break;
 case 128:
  result = __cvmx_helper_xaui_link_set(ipd_port, link_info);
  break;




 case 131:
 case 136:
  result = __cvmx_helper_rgmii_link_set(ipd_port, link_info);
  break;
 case 129:
  result = __cvmx_helper_spi_link_set(ipd_port, link_info);
  break;
 case 130:
 case 132:
  result = __cvmx_helper_sgmii_link_set(ipd_port, link_info);
  break;
 case 134:
 case 135:
  break;
 }



 if (result == 0)
  port_link_info[ipd_port].u64 = link_info.u64;
 return result;
}
