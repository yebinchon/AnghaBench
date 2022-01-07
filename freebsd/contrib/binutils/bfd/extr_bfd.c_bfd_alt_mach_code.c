
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int e_machine; } ;
struct TYPE_3__ {int elf_machine_code; int elf_machine_alt1; int elf_machine_alt2; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_2__* elf_elfheader (int *) ;
 TYPE_1__* get_elf_backend_data (int *) ;

bfd_boolean
bfd_alt_mach_code (bfd *abfd, int alternative)
{
  if (bfd_get_flavour (abfd) == bfd_target_elf_flavour)
    {
      int code;

      switch (alternative)
 {
 case 0:
   code = get_elf_backend_data (abfd)->elf_machine_code;
   break;

 case 1:
   code = get_elf_backend_data (abfd)->elf_machine_alt1;
   if (code == 0)
     return FALSE;
   break;

 case 2:
   code = get_elf_backend_data (abfd)->elf_machine_alt2;
   if (code == 0)
     return FALSE;
   break;

 default:
   return FALSE;
 }

      elf_elfheader (abfd)->e_machine = code;

      return TRUE;
    }

  return FALSE;
}
