
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct minimal_symbol {int dummy; } ;
struct TYPE_3__ {int st_info; } ;
struct TYPE_4__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_2__ elf_symbol_type ;
typedef int asymbol ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 int MSYMBOL_SET_SPECIAL (struct minimal_symbol*) ;
 scalar_t__ STT_LOPROC ;

__attribute__((used)) static void
arm_elf_make_msymbol_special(asymbol *sym, struct minimal_symbol *msym)
{


  if (ELF_ST_TYPE (((elf_symbol_type *)sym)->internal_elf_sym.st_info)
      == STT_LOPROC)
    MSYMBOL_SET_SPECIAL (msym);
}
