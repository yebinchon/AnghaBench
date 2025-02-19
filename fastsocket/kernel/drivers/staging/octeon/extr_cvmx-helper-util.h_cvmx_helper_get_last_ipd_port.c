
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_helper_get_first_ipd_port (int) ;

__attribute__((used)) static inline int cvmx_helper_get_last_ipd_port(int interface)
{
 extern int cvmx_helper_ports_on_interface(int interface);

 return cvmx_helper_get_first_ipd_port(interface) +
        cvmx_helper_ports_on_interface(interface) - 1;
}
