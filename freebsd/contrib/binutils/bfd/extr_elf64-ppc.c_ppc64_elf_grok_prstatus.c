
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int core_pid; int core_signal; } ;
struct TYPE_4__ {int descsz; scalar_t__ descpos; scalar_t__ descdata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int FALSE ;
 int _bfd_elfcore_make_pseudosection (int *,char*,size_t,scalar_t__) ;
 int bfd_get_16 (int *,scalar_t__) ;
 int bfd_get_32 (int *,scalar_t__) ;
 TYPE_3__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
ppc64_elf_grok_prstatus (bfd *abfd, Elf_Internal_Note *note)
{
  size_t offset, size;

  if (note->descsz != 504)
    return FALSE;


  elf_tdata (abfd)->core_signal = bfd_get_16 (abfd, note->descdata + 12);


  elf_tdata (abfd)->core_pid = bfd_get_32 (abfd, note->descdata + 32);


  offset = 112;
  size = 384;


  return _bfd_elfcore_make_pseudosection (abfd, ".reg",
       size, note->descpos + offset);
}
