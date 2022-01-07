
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int bfd_vma ;


 int S_SET_SIZE (int *,int ) ;

__attribute__((used)) static void
elf_s_set_size (symbolS *sym, bfd_vma sz)
{
  S_SET_SIZE (sym, sz);
}
