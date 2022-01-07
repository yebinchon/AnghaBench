
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Phdr ;
typedef int Elf ;


 int ELFCLASS32 ;
 int * _libelf_newphdr (int *,int ,size_t) ;

Elf32_Phdr *
elf32_newphdr(Elf *e, size_t count)
{
 return (_libelf_newphdr(e, ELFCLASS32, count));
}
