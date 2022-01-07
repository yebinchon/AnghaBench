
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEP_CPU ;
 int bfd_mach_mep ;
 int bfd_mach_mep_h1 ;

__attribute__((used)) static int
mep_machine (void)
{
  switch (MEP_CPU)
    {
    default: break;
    case 131: return bfd_mach_mep;
    case 130: return bfd_mach_mep;
    case 129: return bfd_mach_mep;
    case 128: return bfd_mach_mep_h1;
    }

  return bfd_mach_mep;
}
