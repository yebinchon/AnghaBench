
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int core_pid; int core_signal; } ;
struct TYPE_4__ {int descsz; scalar_t__ descpos; int descdata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int FALSE ;
 int _bfd_elfcore_make_pseudosection (int *,char*,unsigned int,scalar_t__) ;
 int bfd_get_16 (int *,int ) ;
 int bfd_get_32 (int *,int ) ;
 TYPE_3__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
ppc_elf_grok_prstatus (bfd *abfd, Elf_Internal_Note *note)
{
  int offset;
  unsigned int size;

  switch (note->descsz)
    {
    default:
      return FALSE;

    case 268:

      elf_tdata (abfd)->core_signal = bfd_get_16 (abfd, note->descdata + 12);


      elf_tdata (abfd)->core_pid = bfd_get_32 (abfd, note->descdata + 24);


      offset = 72;
      size = 192;

      break;
    }


  return _bfd_elfcore_make_pseudosection (abfd, ".reg",
       size, note->descpos + offset);
}
