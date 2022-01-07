
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bfd_arch_rs6000 ;
 unsigned long bfd_mach_ppc ;
 unsigned long bfd_mach_ppc64 ;
 unsigned long bfd_mach_rs6k ;
 scalar_t__ ppc_arch () ;
 scalar_t__ ppc_obj64 ;

unsigned long
ppc_mach (void)
{
  if (ppc_obj64)
    return bfd_mach_ppc64;
  else if (ppc_arch () == bfd_arch_rs6000)
    return bfd_mach_rs6k;
  else
    return bfd_mach_ppc;
}
