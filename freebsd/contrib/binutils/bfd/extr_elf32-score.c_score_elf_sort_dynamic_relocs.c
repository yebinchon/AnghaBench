
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r_info; } ;
typedef TYPE_1__ Elf_Internal_Rela ;


 int ELF32_R_SYM (int ) ;
 int bfd_elf32_swap_reloc_in (int ,void const*,TYPE_1__*) ;
 int reldyn_sorting_bfd ;

__attribute__((used)) static int
score_elf_sort_dynamic_relocs (const void *arg1, const void *arg2)
{
  Elf_Internal_Rela int_reloc1;
  Elf_Internal_Rela int_reloc2;

  bfd_elf32_swap_reloc_in (reldyn_sorting_bfd, arg1, &int_reloc1);
  bfd_elf32_swap_reloc_in (reldyn_sorting_bfd, arg2, &int_reloc2);

  return (ELF32_R_SYM (int_reloc1.r_info) - ELF32_R_SYM (int_reloc2.r_info));
}
