
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {void* core_command; void* core_program; } ;
struct TYPE_4__ {int descsz; scalar_t__ descdata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int FALSE ;
 int TRUE ;
 void* _bfd_elfcore_strndup (int *,scalar_t__,int) ;
 TYPE_3__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
ppc64_elf_grok_psinfo (bfd *abfd, Elf_Internal_Note *note)
{
  if (note->descsz != 136)
    return FALSE;

  elf_tdata (abfd)->core_program
    = _bfd_elfcore_strndup (abfd, note->descdata + 40, 16);
  elf_tdata (abfd)->core_command
    = _bfd_elfcore_strndup (abfd, note->descdata + 56, 80);

  return TRUE;
}
