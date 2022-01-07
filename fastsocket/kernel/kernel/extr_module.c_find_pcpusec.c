
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Shdr ;
typedef int Elf_Ehdr ;



__attribute__((used)) static inline unsigned int find_pcpusec(Elf_Ehdr *hdr,
     Elf_Shdr *sechdrs,
     const char *secstrings)
{
 return 0;
}
