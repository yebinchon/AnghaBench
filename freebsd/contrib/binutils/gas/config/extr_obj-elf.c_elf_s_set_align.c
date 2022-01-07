
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int bfd_vma ;


 int S_SET_ALIGN (int *,int ) ;

__attribute__((used)) static void
elf_s_set_align (symbolS *sym, bfd_vma align)
{
  S_SET_ALIGN (sym, align);
}
