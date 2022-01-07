
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Phdr ;
typedef int Elf ;


 int ELFCLASS32 ;
 int * _libelf_getphdr (int *,int ) ;

Elf32_Phdr *
elf32_getphdr(Elf *e)
{
 return (_libelf_getphdr(e, ELFCLASS32));
}
