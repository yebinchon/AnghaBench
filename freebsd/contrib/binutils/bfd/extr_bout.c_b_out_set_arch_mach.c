
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int bfd_arch_i960 ;
 int bfd_arch_unknown ;
 int bfd_default_set_arch_mach (int *,int,unsigned long) ;
__attribute__((used)) static bfd_boolean
b_out_set_arch_mach (bfd *abfd,
       enum bfd_architecture arch,
       unsigned long machine)
{
  bfd_default_set_arch_mach (abfd, arch, machine);

  if (arch == bfd_arch_unknown)
    return TRUE;

  if (arch == bfd_arch_i960)
    switch (machine)
      {
      case 134:
      case 130:
      case 129:
      case 128:
      case 135:
      case 131:
      case 132:
      case 133:
      case 0:
 return TRUE;
      default:
 return FALSE;
      }

  return FALSE;
}
