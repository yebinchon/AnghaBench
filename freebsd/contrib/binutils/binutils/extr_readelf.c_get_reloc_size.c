
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int e_machine; } ;
struct TYPE_4__ {int r_info; } ;
typedef TYPE_1__ Elf_Internal_Rela ;


 int ELF32_R_TYPE (int ) ;





 TYPE_3__ elf_header ;

__attribute__((used)) static unsigned int
get_reloc_size (Elf_Internal_Rela * reloc)
{
  switch (elf_header.e_machine)
    {
    case 132:
    case 131:
    case 130:
    case 129:
      switch (ELF32_R_TYPE (reloc->r_info))
 {


 case 128:
   return 2;
 default:
   return 4;
 }
    default:





      return 4;
    }
}
