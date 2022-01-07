
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int bfd_vma ;


 int S_GET_SIZE (int *) ;

__attribute__((used)) static bfd_vma
elf_s_get_size (symbolS *sym)
{
  return S_GET_SIZE (sym);
}
