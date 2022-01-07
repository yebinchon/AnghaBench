
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf64_Phdr ;
typedef int Elf ;


 int ELFCLASS64 ;
 int * _libelf_newphdr (int *,int ,size_t) ;

Elf64_Phdr *
elf64_newphdr(Elf *e, size_t count)
{
 return (_libelf_newphdr(e, ELFCLASS64, count));
}
