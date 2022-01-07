
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int e_flags; scalar_t__ e_machine; } ;


 scalar_t__ ABI_64_P (int *) ;
 int EF_SPARC_32PLUS ;
 int EF_SPARC_LEDATA ;
 int EF_SPARC_SUN_US1 ;
 int EF_SPARC_SUN_US3 ;
 scalar_t__ EM_SPARC32PLUS ;
 int FALSE ;
 int bfd_arch_sparc ;
 int bfd_default_set_arch_mach (int *,int ,unsigned long) ;
 unsigned long bfd_mach_sparc ;
 unsigned long bfd_mach_sparc_sparclite_le ;
 unsigned long bfd_mach_sparc_v8plus ;
 unsigned long bfd_mach_sparc_v8plusa ;
 unsigned long bfd_mach_sparc_v8plusb ;
 unsigned long bfd_mach_sparc_v9 ;
 unsigned long bfd_mach_sparc_v9a ;
 unsigned long bfd_mach_sparc_v9b ;
 TYPE_1__* elf_elfheader (int *) ;

bfd_boolean
_bfd_sparc_elf_object_p (bfd *abfd)
{
  if (ABI_64_P (abfd))
    {
      unsigned long mach = bfd_mach_sparc_v9;

      if (elf_elfheader (abfd)->e_flags & EF_SPARC_SUN_US3)
 mach = bfd_mach_sparc_v9b;
      else if (elf_elfheader (abfd)->e_flags & EF_SPARC_SUN_US1)
 mach = bfd_mach_sparc_v9a;
      return bfd_default_set_arch_mach (abfd, bfd_arch_sparc, mach);
    }
  else
    {
      if (elf_elfheader (abfd)->e_machine == EM_SPARC32PLUS)
 {
   if (elf_elfheader (abfd)->e_flags & EF_SPARC_SUN_US3)
     return bfd_default_set_arch_mach (abfd, bfd_arch_sparc,
           bfd_mach_sparc_v8plusb);
   else if (elf_elfheader (abfd)->e_flags & EF_SPARC_SUN_US1)
     return bfd_default_set_arch_mach (abfd, bfd_arch_sparc,
           bfd_mach_sparc_v8plusa);
   else if (elf_elfheader (abfd)->e_flags & EF_SPARC_32PLUS)
     return bfd_default_set_arch_mach (abfd, bfd_arch_sparc,
           bfd_mach_sparc_v8plus);
   else
     return FALSE;
 }
      else if (elf_elfheader (abfd)->e_flags & EF_SPARC_LEDATA)
 return bfd_default_set_arch_mach (abfd, bfd_arch_sparc,
       bfd_mach_sparc_sparclite_le);
      else
 return bfd_default_set_arch_mach (abfd, bfd_arch_sparc, bfd_mach_sparc);
    }
}
