
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_6__ {int core_command; void* core_pid; void* core_signal; } ;
struct TYPE_5__ {scalar_t__ descdata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int _bfd_elfcore_strndup (int *,scalar_t__,int) ;
 void* bfd_h_get_32 (int *,int *) ;
 TYPE_4__* elf_tdata (int *) ;
 int elfcore_make_note_pseudosection (int *,char*,TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
elfcore_grok_netbsd_procinfo (bfd *abfd, Elf_Internal_Note *note)
{

  elf_tdata (abfd)->core_signal
    = bfd_h_get_32 (abfd, (bfd_byte *) note->descdata + 0x08);


  elf_tdata (abfd)->core_pid
    = bfd_h_get_32 (abfd, (bfd_byte *) note->descdata + 0x50);


  elf_tdata (abfd)->core_command
    = _bfd_elfcore_strndup (abfd, note->descdata + 0x7c, 31);

  return elfcore_make_note_pseudosection (abfd, ".note.netbsdcore.procinfo",
       note);
}
