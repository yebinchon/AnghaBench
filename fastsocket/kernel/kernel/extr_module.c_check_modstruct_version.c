
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int Elf_Shdr ;



__attribute__((used)) static inline int check_modstruct_version(Elf_Shdr *sechdrs,
       unsigned int versindex,
       struct module *mod)
{
 return 1;
}
