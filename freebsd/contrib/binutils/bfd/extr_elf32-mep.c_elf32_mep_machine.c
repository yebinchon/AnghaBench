
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {int e_flags; } ;






 int EF_MEP_CPU_MASK ;
 int bfd_mach_mep ;
 int bfd_mach_mep_h1 ;
 TYPE_1__* elf_elfheader (int *) ;

__attribute__((used)) static int
elf32_mep_machine (bfd * abfd)
{
  switch (elf_elfheader (abfd)->e_flags & EF_MEP_CPU_MASK)
    {
    default: break;
    case 131: return bfd_mach_mep;
    case 130: return bfd_mach_mep;
    case 129: return bfd_mach_mep;
    case 128: return bfd_mach_mep_h1;
    }

  return bfd_mach_mep;
}
