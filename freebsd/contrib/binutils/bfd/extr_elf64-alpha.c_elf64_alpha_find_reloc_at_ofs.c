
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
struct TYPE_5__ {scalar_t__ r_offset; int r_info; } ;
typedef TYPE_1__ Elf_Internal_Rela ;


 unsigned int ELF64_R_TYPE (int ) ;

__attribute__((used)) static Elf_Internal_Rela *
elf64_alpha_find_reloc_at_ofs (Elf_Internal_Rela *rel,
          Elf_Internal_Rela *relend,
          bfd_vma offset, int type)
{
  while (rel < relend)
    {
      if (rel->r_offset == offset
   && ELF64_R_TYPE (rel->r_info) == (unsigned int) type)
 return rel;
      ++rel;
    }
  return ((void*)0);
}
