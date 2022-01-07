
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf64_Ehdr ;
typedef int Elf ;


 int ELFCLASS64 ;
 int * _libelf_ehdr (int *,int ,int ) ;

Elf64_Ehdr *
elf64_getehdr(Elf *e)
{
 return (_libelf_ehdr(e, ELFCLASS64, 0));
}
