
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_SYNCWS ;
 int __cvmx_helper_board_interface_probe (int,int ) ;
 int __cvmx_helper_loop_probe (int) ;
 int __cvmx_helper_npi_probe (int) ;
 int __cvmx_helper_rgmii_probe (int) ;
 int __cvmx_helper_sgmii_probe (int) ;
 int __cvmx_helper_spi_probe (int) ;
 int __cvmx_helper_xaui_probe (int) ;
 int cvmx_helper_interface_get_mode (int) ;
 int * interface_port_count ;

int cvmx_helper_interface_probe(int interface)
{



 switch (cvmx_helper_interface_get_mode(interface)) {

 case 137:
 case 133:
  interface_port_count[interface] = 0;
  break;

 case 128:
  interface_port_count[interface] =
      __cvmx_helper_xaui_probe(interface);
  break;




 case 131:
 case 136:
  interface_port_count[interface] =
      __cvmx_helper_rgmii_probe(interface);
  break;




 case 129:
  interface_port_count[interface] =
      __cvmx_helper_spi_probe(interface);
  break;




 case 130:
 case 132:
  interface_port_count[interface] =
      __cvmx_helper_sgmii_probe(interface);
  break;

 case 134:
  interface_port_count[interface] =
      __cvmx_helper_npi_probe(interface);
  break;




 case 135:
  interface_port_count[interface] =
      __cvmx_helper_loop_probe(interface);
  break;
 }

 interface_port_count[interface] =
     __cvmx_helper_board_interface_probe(interface,
      interface_port_count
      [interface]);


 CVMX_SYNCWS;

 return 0;
}
