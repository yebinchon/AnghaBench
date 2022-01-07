
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum elf_reloc_type_class { ____Placeholder_elf_reloc_type_class } elf_reloc_type_class ;
struct TYPE_3__ {int r_info; } ;
typedef TYPE_1__ Elf_Internal_Rela ;


 scalar_t__ ELF32_R_TYPE (int ) ;



 int reloc_class_copy ;
 int reloc_class_normal ;
 int reloc_class_plt ;
 int reloc_class_relative ;

__attribute__((used)) static enum elf_reloc_type_class
elf32_sparc_reloc_type_class (const Elf_Internal_Rela *rela)
{
  switch ((int) ELF32_R_TYPE (rela->r_info))
    {
    case 128:
      return reloc_class_relative;
    case 129:
      return reloc_class_plt;
    case 130:
      return reloc_class_copy;
    default:
      return reloc_class_normal;
    }
}
