
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_helper_setup_gmx (int,int) ;
 int __cvmx_helper_sgmii_hardware_init_one_time (int,int) ;
 int __cvmx_helper_sgmii_link_get (int) ;
 int __cvmx_helper_sgmii_link_set (int,int ) ;
 int cvmx_helper_get_ipd_port (int,int) ;

__attribute__((used)) static int __cvmx_helper_sgmii_hardware_init(int interface, int num_ports)
{
 int index;

 __cvmx_helper_setup_gmx(interface, num_ports);

 for (index = 0; index < num_ports; index++) {
  int ipd_port = cvmx_helper_get_ipd_port(interface, index);
  __cvmx_helper_sgmii_hardware_init_one_time(interface, index);
  __cvmx_helper_sgmii_link_set(ipd_port,
          __cvmx_helper_sgmii_link_get
          (ipd_port));

 }

 return 0;
}
