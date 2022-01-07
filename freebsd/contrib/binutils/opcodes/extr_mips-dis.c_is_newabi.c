
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* e_ident; int e_flags; } ;
typedef TYPE_1__ Elf_Internal_Ehdr ;


 int EF_MIPS_ABI2 ;
 size_t EI_CLASS ;
 scalar_t__ ELFCLASS64 ;

__attribute__((used)) static int
is_newabi (Elf_Internal_Ehdr *header)
{

  if (header->e_ident[EI_CLASS] == ELFCLASS64)
    return 1;


  if ((header->e_flags & EF_MIPS_ABI2) != 0)
    return 1;

  return 0;
}
