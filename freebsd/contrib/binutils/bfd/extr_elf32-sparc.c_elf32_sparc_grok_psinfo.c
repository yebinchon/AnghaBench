
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {void* core_command; void* core_program; } ;
struct TYPE_4__ {int descsz; int descdata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int FALSE ;
 int TRUE ;
 void* _bfd_elfcore_strndup (int *,int ,int) ;
 TYPE_2__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
elf32_sparc_grok_psinfo (bfd *abfd, Elf_Internal_Note *note)
{
  switch (note->descsz)
    {
    default:
      return FALSE;

    case 260:
      elf_tdata (abfd)->core_program
 = _bfd_elfcore_strndup (abfd, note->descdata + 84, 16);
      elf_tdata (abfd)->core_command
 = _bfd_elfcore_strndup (abfd, note->descdata + 100, 80);
      break;

    case 336:
      elf_tdata (abfd)->core_program
 = _bfd_elfcore_strndup (abfd, note->descdata + 88, 16);
      elf_tdata (abfd)->core_command
 = _bfd_elfcore_strndup (abfd, note->descdata + 104, 80);
      break;
    }

  return TRUE;
}
