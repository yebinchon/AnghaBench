
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t sh_size; scalar_t__ sh_addr; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef int Elf_Ehdr ;


 unsigned int find_sec (int *,TYPE_1__*,char const*,char const*) ;

__attribute__((used)) static void *section_objs(Elf_Ehdr *hdr,
     Elf_Shdr *sechdrs,
     const char *secstrings,
     const char *name,
     size_t object_size,
     unsigned int *num)
{
 unsigned int sec = find_sec(hdr, sechdrs, secstrings, name);


 *num = sechdrs[sec].sh_size / object_size;
 return (void *)sechdrs[sec].sh_addr;
}
