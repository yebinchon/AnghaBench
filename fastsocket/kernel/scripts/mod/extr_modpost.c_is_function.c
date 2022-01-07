
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_info; } ;
typedef TYPE_1__ Elf_Sym ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ STT_FUNC ;

__attribute__((used)) static int is_function(Elf_Sym *sym)
{
 if (sym)
  return ELF_ST_TYPE(sym->st_info) == STT_FUNC;
 else
  return -1;
}
