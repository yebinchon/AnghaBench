
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int machine; } ;


 int KERNEL_U_ADDR_200 ;
 int KERNEL_U_ADDR_300 ;
 int kernel_u_addr ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ uname (struct utsname*) ;

void
_initialize_dpx2_nat (void)
{
  struct utsname uts;

  if (uname (&uts) == 0 && strcmp (uts.machine, "DPX/2200") == 0)
    kernel_u_addr = KERNEL_U_ADDR_200;
  else
    kernel_u_addr = KERNEL_U_ADDR_300;
}
