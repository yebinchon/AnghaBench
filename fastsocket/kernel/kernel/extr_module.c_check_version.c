
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int Elf_Shdr ;



__attribute__((used)) static inline int check_version(Elf_Shdr *sechdrs,
    unsigned int versindex,
    const char *symname,
    struct module *mod,
    const unsigned long *crc,
    const struct module *crc_owner)
{
 return 1;
}
