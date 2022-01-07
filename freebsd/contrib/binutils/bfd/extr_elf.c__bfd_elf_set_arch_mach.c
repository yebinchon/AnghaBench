
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int arch; } ;


 int FALSE ;
 int bfd_arch_unknown ;
 int bfd_default_set_arch_mach (int *,int,unsigned long) ;
 TYPE_1__* get_elf_backend_data (int *) ;

bfd_boolean
_bfd_elf_set_arch_mach (bfd *abfd,
   enum bfd_architecture arch,
   unsigned long machine)
{


  if (arch != get_elf_backend_data (abfd)->arch
      && arch != bfd_arch_unknown
      && get_elf_backend_data (abfd)->arch != bfd_arch_unknown)
    return FALSE;

  return bfd_default_set_arch_mach (abfd, arch, machine);
}
