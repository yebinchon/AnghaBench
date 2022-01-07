
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {char* core_command; void* core_program; } ;
struct TYPE_4__ {int descsz; int descdata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int FALSE ;
 int TRUE ;
 void* _bfd_elfcore_strndup (int *,int ,int) ;
 TYPE_2__* elf_tdata (int *) ;
 int strlen (char*) ;

__attribute__((used)) static bfd_boolean
elf32_mips_grok_psinfo (bfd *abfd, Elf_Internal_Note *note)
{
  switch (note->descsz)
    {
      default:
 return FALSE;

      case 128:
 elf_tdata (abfd)->core_program
  = _bfd_elfcore_strndup (abfd, note->descdata + 32, 16);
 elf_tdata (abfd)->core_command
  = _bfd_elfcore_strndup (abfd, note->descdata + 48, 80);
    }





  {
    char *command = elf_tdata (abfd)->core_command;
    int n = strlen (command);

    if (0 < n && command[n - 1] == ' ')
      command[n - 1] = '\0';
  }

  return TRUE;
}
