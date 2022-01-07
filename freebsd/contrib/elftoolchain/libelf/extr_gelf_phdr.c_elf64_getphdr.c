
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf64_Phdr ;
typedef int Elf ;


 int ELFCLASS64 ;
 int * _libelf_getphdr (int *,int ) ;

Elf64_Phdr *
elf64_getphdr(Elf *e)
{
 return (_libelf_getphdr(e, ELFCLASS64));
}
