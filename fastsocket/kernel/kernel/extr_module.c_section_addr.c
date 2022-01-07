
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sh_addr; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef int Elf_Ehdr ;


 size_t find_sec (int *,TYPE_1__*,char const*,char const*) ;

__attribute__((used)) static void *section_addr(Elf_Ehdr *hdr, Elf_Shdr *shdrs,
     const char *secstrings, const char *name)
{

 return (void *)shdrs[find_sec(hdr, shdrs, secstrings, name)].sh_addr;
}
