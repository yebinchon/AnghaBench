
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Data ;


 int ELFCLASS32 ;
 int ELF_TOMEMORY ;
 int EM_NONE ;
 int * _libelf_xlate (int *,int const*,unsigned int,int ,int ,int ) ;

Elf_Data *
elf32_xlatetom(Elf_Data *dst, const Elf_Data *src, unsigned int encoding)
{
 return _libelf_xlate(dst, src, encoding, ELFCLASS32, EM_NONE,
     ELF_TOMEMORY);
}
