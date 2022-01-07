
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int e_shnum; } ;
struct TYPE_5__ {int sh_flags; int sh_name; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef TYPE_2__ Elf_Ehdr ;


 int SHF_ALLOC ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static unsigned int find_sec(Elf_Ehdr *hdr,
        Elf_Shdr *sechdrs,
        const char *secstrings,
        const char *name)
{
 unsigned int i;

 for (i = 1; i < hdr->e_shnum; i++)

  if ((sechdrs[i].sh_flags & SHF_ALLOC)
      && strcmp(secstrings+sechdrs[i].sh_name, name) == 0)
   return i;
 return 0;
}
