
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int core_signal; int core_pid; } ;
struct TYPE_4__ {int descsz; scalar_t__ descpos; scalar_t__ descdata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int FALSE ;
 int _bfd_elfcore_make_pseudosection (int *,char*,size_t,scalar_t__) ;
 int bfd_get_16 (int *,int ) ;
 int bfd_get_32 (int *,int ) ;
 TYPE_2__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
elf32_arm_nabi_grok_prstatus (bfd *abfd, Elf_Internal_Note *note)
{
  int offset;
  size_t size;

  switch (note->descsz)
    {
      default:
 return FALSE;

      case 148:

 elf_tdata (abfd)->core_signal = bfd_get_16 (abfd, note->descdata + 12);


 elf_tdata (abfd)->core_pid = bfd_get_32 (abfd, note->descdata + 24);


 offset = 72;
 size = 72;

 break;

      case 96:

 if (elf_tdata(abfd)->core_signal == 0)
   elf_tdata (abfd)->core_signal = ((int *)(note->descdata))[5];


 elf_tdata (abfd)->core_pid = ((int *)(note->descdata))[6];


 offset = 28;
 size = 68;
 break;
    }


  return _bfd_elfcore_make_pseudosection (abfd, ".reg",
       size, note->descpos + offset);
}
