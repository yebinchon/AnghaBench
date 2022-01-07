
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_info; } ;
typedef TYPE_1__ Elf_Internal_Sym ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ STT_REGISTER ;

__attribute__((used)) static int
elf64_sparc_get_symbol_type (Elf_Internal_Sym *elf_sym, int type)
{
  if (ELF_ST_TYPE (elf_sym->st_info) == STT_REGISTER)
    return STT_REGISTER;
  else
    return type;
}
