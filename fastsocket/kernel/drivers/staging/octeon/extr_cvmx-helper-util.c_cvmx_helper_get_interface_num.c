
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_dprintf (char*) ;

int cvmx_helper_get_interface_num(int ipd_port)
{
 if (ipd_port < 16)
  return 0;
 else if (ipd_port < 32)
  return 1;
 else if (ipd_port < 36)
  return 2;
 else if (ipd_port < 40)
  return 3;
 else
  cvmx_dprintf("cvmx_helper_get_interface_num: Illegal IPD "
        "port number\n");

 return -1;
}
