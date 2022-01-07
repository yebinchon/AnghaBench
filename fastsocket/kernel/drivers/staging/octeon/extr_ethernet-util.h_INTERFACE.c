
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,int) ;

__attribute__((used)) static inline int INTERFACE(int ipd_port)
{
 if (ipd_port < 32)
  return ipd_port >> 4;
 else if (ipd_port < 36)
  return 2;
 else if (ipd_port < 40)
  return 3;
 else if (ipd_port == 40)
  return 4;
 else
  panic("Illegal ipd_port %d passed to INTERFACE\n", ipd_port);
}
