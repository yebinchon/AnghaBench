
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Scn ;
typedef int Elf64_Shdr ;


 int ELFCLASS64 ;
 int * _libelf_getshdr (int *,int ) ;

Elf64_Shdr *
elf64_getshdr(Elf_Scn *s)
{
 return (_libelf_getshdr(s, ELFCLASS64));
}
