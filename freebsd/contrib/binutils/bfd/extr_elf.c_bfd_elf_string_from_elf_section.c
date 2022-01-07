
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_5__ {unsigned int e_shstrndx; } ;
struct TYPE_4__ {unsigned int sh_size; unsigned int sh_name; int * contents; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int _ (char*) ;
 int _bfd_error_handler (int ,int *,unsigned int,unsigned long,char*) ;
 int * bfd_elf_get_str_section (int *,unsigned int) ;
 TYPE_3__* elf_elfheader (int *) ;
 TYPE_1__** elf_elfsections (int *) ;
 unsigned int elf_numsections (int *) ;
 int stub1 (int ,int *,unsigned int,unsigned long,char*) ;

char *
bfd_elf_string_from_elf_section (bfd *abfd,
     unsigned int shindex,
     unsigned int strindex)
{
  Elf_Internal_Shdr *hdr;

  if (strindex == 0)
    return "";

  if (elf_elfsections (abfd) == ((void*)0) || shindex >= elf_numsections (abfd))
    return ((void*)0);

  hdr = elf_elfsections (abfd)[shindex];

  if (hdr->contents == ((void*)0)
      && bfd_elf_get_str_section (abfd, shindex) == ((void*)0))
    return ((void*)0);

  if (strindex >= hdr->sh_size)
    {
      unsigned int shstrndx = elf_elfheader(abfd)->e_shstrndx;
      (*_bfd_error_handler)
 (_("%B: invalid string offset %u >= %lu for section `%s'"),
  abfd, strindex, (unsigned long) hdr->sh_size,
  (shindex == shstrndx && strindex == hdr->sh_name
   ? ".shstrtab"
   : bfd_elf_string_from_elf_section (abfd, shstrndx, hdr->sh_name)));
      return "";
    }

  return ((char *) hdr->contents) + strindex;
}
