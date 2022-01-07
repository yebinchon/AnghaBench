
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_type { ____Placeholder_machine_type } machine_type ;
typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd ;
 int bfd_arch_i386 ;
 int bfd_arch_m68k ;
 int bfd_arch_obscure ;
 int bfd_arch_sparc ;
 unsigned long bfd_mach_m68000 ;
 unsigned long bfd_mach_m68010 ;
 unsigned long bfd_mach_m68020 ;
 unsigned long bfd_mach_sparc_sparclet ;
 unsigned long bfd_mach_sparc_sparclite_le ;
 int bfd_set_arch_mach (int *,int,unsigned long) ;

__attribute__((used)) static void
sunos_set_arch_mach (bfd *abfd, enum machine_type machtype)
{

  enum bfd_architecture arch;
  unsigned long machine;

  switch (machtype)
    {
    case 128:


      arch = bfd_arch_m68k;
      machine = bfd_mach_m68000;
      break;

    case 136:
    case 134:
      arch = bfd_arch_m68k;
      machine = bfd_mach_m68010;
      break;

    case 135:
    case 133:
      arch = bfd_arch_m68k;
      machine = bfd_mach_m68020;
      break;

    case 131:
      arch = bfd_arch_sparc;
      machine = 0;
      break;

    case 130:
      arch = bfd_arch_sparc;
      machine = bfd_mach_sparc_sparclet;
      break;

    case 129:
      arch = bfd_arch_sparc;
      machine = bfd_mach_sparc_sparclite_le;
      break;

    case 138:
    case 137:
      arch = bfd_arch_i386;
      machine = 0;
      break;

    case 132:
      arch = bfd_arch_m68k;
      machine = 0;
      break;

    default:
      arch = bfd_arch_obscure;
      machine = 0;
      break;
    }
  bfd_set_arch_mach (abfd, arch, machine);
}
