
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_helper_rgmii_configure_loopback (int,int,int) ;
 int __cvmx_helper_sgmii_configure_loopback (int,int,int) ;
 int __cvmx_helper_xaui_configure_loopback (int,int,int) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 int cvmx_helper_interface_get_mode (int) ;
 int cvmx_helper_ports_on_interface (int) ;

int cvmx_helper_configure_loopback(int ipd_port, int enable_internal,
       int enable_external)
{
 int result = -1;
 int interface = cvmx_helper_get_interface_num(ipd_port);
 int index = cvmx_helper_get_interface_index_num(ipd_port);

 if (index >= cvmx_helper_ports_on_interface(interface))
  return -1;

 switch (cvmx_helper_interface_get_mode(interface)) {
 case 137:
 case 133:
 case 129:
 case 134:
 case 135:
  break;
 case 128:
  result =
      __cvmx_helper_xaui_configure_loopback(ipd_port,
         enable_internal,
         enable_external);
  break;
 case 131:
 case 136:
  result =
      __cvmx_helper_rgmii_configure_loopback(ipd_port,
          enable_internal,
          enable_external);
  break;
 case 130:
 case 132:
  result =
      __cvmx_helper_sgmii_configure_loopback(ipd_port,
          enable_internal,
          enable_external);
  break;
 }
 return result;
}
