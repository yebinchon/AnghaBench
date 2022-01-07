
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Ehdr ;
typedef int Elf ;


 int ELFCLASS32 ;
 int * _libelf_ehdr (int *,int ,int) ;

Elf32_Ehdr *
elf32_newehdr(Elf *e)
{
 return (_libelf_ehdr(e, ELFCLASS32, 1));
}
