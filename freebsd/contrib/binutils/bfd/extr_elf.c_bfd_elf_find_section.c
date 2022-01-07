
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_internal_shdr {size_t sh_name; } ;
typedef int bfd ;
struct TYPE_2__ {int e_shstrndx; } ;
typedef struct elf_internal_shdr Elf_Internal_Shdr ;


 char* bfd_elf_get_str_section (int *,int ) ;
 TYPE_1__* elf_elfheader (int *) ;
 struct elf_internal_shdr** elf_elfsections (int *) ;
 unsigned int elf_numsections (int *) ;
 int strcmp (char*,char*) ;

struct elf_internal_shdr *
bfd_elf_find_section (bfd *abfd, char *name)
{
  Elf_Internal_Shdr **i_shdrp;
  char *shstrtab;
  unsigned int max;
  unsigned int i;

  i_shdrp = elf_elfsections (abfd);
  if (i_shdrp != ((void*)0))
    {
      shstrtab = bfd_elf_get_str_section (abfd,
       elf_elfheader (abfd)->e_shstrndx);
      if (shstrtab != ((void*)0))
 {
   max = elf_numsections (abfd);
   for (i = 1; i < max; i++)
     if (!strcmp (&shstrtab[i_shdrp[i]->sh_name], name))
       return i_shdrp[i];
 }
    }
  return 0;
}
