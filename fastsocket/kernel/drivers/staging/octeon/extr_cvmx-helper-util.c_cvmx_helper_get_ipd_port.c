
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cvmx_helper_get_ipd_port(int interface, int port)
{
 switch (interface) {
 case 0:
  return port;
 case 1:
  return port + 16;
 case 2:
  return port + 32;
 case 3:
  return port + 36;
 }
 return -1;
}
