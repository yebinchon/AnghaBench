
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cvmx_helper_link_info_t ;


 int __cvmx_helper_sgmii_hardware_init_link (int,int) ;
 int __cvmx_helper_sgmii_hardware_init_link_speed (int,int,int ) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;

int __cvmx_helper_sgmii_link_set(int ipd_port,
     cvmx_helper_link_info_t link_info)
{
 int interface = cvmx_helper_get_interface_num(ipd_port);
 int index = cvmx_helper_get_interface_index_num(ipd_port);
 __cvmx_helper_sgmii_hardware_init_link(interface, index);
 return __cvmx_helper_sgmii_hardware_init_link_speed(interface, index,
           link_info);
}
