
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Type ;


 int ELFCLASS32 ;
 size_t _libelf_fsize (int ,int ,unsigned int,size_t) ;

size_t
elf32_fsize(Elf_Type t, size_t c, unsigned int v)
{
 return (_libelf_fsize(t, ELFCLASS32, v, c));
}
