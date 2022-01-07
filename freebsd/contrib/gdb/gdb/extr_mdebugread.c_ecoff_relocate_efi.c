
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_2__ {int adr; } ;
struct mips_extra_func_info {TYPE_1__ pdr; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ SYMBOL_VALUE (struct symbol*) ;

void
ecoff_relocate_efi (struct symbol *sym, CORE_ADDR delta)
{
  struct mips_extra_func_info *e;

  e = (struct mips_extra_func_info *) SYMBOL_VALUE (sym);

  e->pdr.adr += delta;
}
