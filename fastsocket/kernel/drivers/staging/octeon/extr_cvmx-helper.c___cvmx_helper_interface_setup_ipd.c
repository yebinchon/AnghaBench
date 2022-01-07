
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_helper_port_setup_ipd (int) ;
 int cvmx_helper_get_ipd_port (int,int ) ;
 int* interface_port_count ;

__attribute__((used)) static int __cvmx_helper_interface_setup_ipd(int interface)
{
 int ipd_port = cvmx_helper_get_ipd_port(interface, 0);
 int num_ports = interface_port_count[interface];

 while (num_ports--) {
  __cvmx_helper_port_setup_ipd(ipd_port);
  ipd_port++;
 }
 return 0;
}
