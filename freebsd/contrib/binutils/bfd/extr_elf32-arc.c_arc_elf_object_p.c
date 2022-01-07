
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {scalar_t__ e_machine; unsigned long e_flags; } ;


 unsigned long EF_ARC_MACH ;
 scalar_t__ EM_ARC ;




 int bfd_arch_arc ;
 int bfd_default_set_arch_mach (int *,int ,unsigned int) ;
 unsigned int bfd_mach_arc_5 ;
 unsigned int bfd_mach_arc_6 ;
 unsigned int bfd_mach_arc_7 ;
 unsigned int bfd_mach_arc_8 ;
 TYPE_1__* elf_elfheader (int *) ;

__attribute__((used)) static bfd_boolean
arc_elf_object_p (bfd *abfd)
{
  unsigned int mach = bfd_mach_arc_6;

  if (elf_elfheader(abfd)->e_machine == EM_ARC)
    {
      unsigned long arch = elf_elfheader (abfd)->e_flags & EF_ARC_MACH;

      switch (arch)
 {
 case 131:
   mach = bfd_mach_arc_5;
   break;
 default:
 case 130:
   mach = bfd_mach_arc_6;
   break;
 case 129:
   mach = bfd_mach_arc_7;
   break;
 case 128:
   mach = bfd_mach_arc_8;
   break;
 }
    }
  return bfd_default_set_arch_mach (abfd, bfd_arch_arc, mach);
}
