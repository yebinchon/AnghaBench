
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {void* core_pid; void* core_signal; } ;
struct TYPE_4__ {int namesz; int descsz; scalar_t__ descpos; scalar_t__ descdata; int namedata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int FALSE ;
 int _bfd_elfcore_make_pseudosection (int *,char*,size_t,scalar_t__) ;
 void* bfd_get_16 (int *,scalar_t__) ;
 void* bfd_get_32 (int *,scalar_t__) ;
 TYPE_2__* elf_tdata (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bfd_boolean
elf_i386_grok_prstatus (bfd *abfd, Elf_Internal_Note *note)
{
  int offset;
  size_t size;

  if (note->namesz == 8 && strcmp (note->namedata, "FreeBSD") == 0)
    {
      int pr_version = bfd_get_32 (abfd, note->descdata);

      if (pr_version != 1)
  return FALSE;


      elf_tdata (abfd)->core_signal = bfd_get_32 (abfd, note->descdata + 20);


      elf_tdata (abfd)->core_pid = bfd_get_32 (abfd, note->descdata + 24);


      offset = 28;
      size = bfd_get_32 (abfd, note->descdata + 8);
    }
  else
    {
      switch (note->descsz)
 {
 default:
   return FALSE;

 case 144:

   elf_tdata (abfd)->core_signal = bfd_get_16 (abfd, note->descdata + 12);


   elf_tdata (abfd)->core_pid = bfd_get_32 (abfd, note->descdata + 24);


   offset = 72;
   size = 68;

   break;
 }
    }


  return _bfd_elfcore_make_pseudosection (abfd, ".reg",
       size, note->descpos + offset);
}
