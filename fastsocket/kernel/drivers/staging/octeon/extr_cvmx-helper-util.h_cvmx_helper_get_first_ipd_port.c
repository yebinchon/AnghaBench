
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_helper_get_ipd_port (int,int ) ;

__attribute__((used)) static inline int cvmx_helper_get_first_ipd_port(int interface)
{
 return cvmx_helper_get_ipd_port(interface, 0);
}
