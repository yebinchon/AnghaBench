
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Scn ;
typedef int Elf32_Shdr ;


 int ELFCLASS32 ;
 int * _libelf_getshdr (int *,int ) ;

Elf32_Shdr *
elf32_getshdr(Elf_Scn *s)
{
 return (_libelf_getshdr(s, ELFCLASS32));
}
