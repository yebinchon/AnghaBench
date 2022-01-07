
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_shndx; } ;
typedef TYPE_1__ Elf_Internal_Sym ;



__attribute__((used)) static int
elf_sort_elf_symbol (const void *arg1, const void *arg2)
{
  const Elf_Internal_Sym *s1 = *(const Elf_Internal_Sym **) arg1;
  const Elf_Internal_Sym *s2 = *(const Elf_Internal_Sym **) arg2;

  return s1->st_shndx - s2->st_shndx;
}
