
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_3__ {int st_other; } ;
struct TYPE_4__ {TYPE_1__ internal_elf_sym; } ;


 TYPE_2__* elf_symbol (int ) ;
 int symbol_get_bfdsym (int *) ;

int
elf_s_get_other (symbolS *sym)
{
  return elf_symbol (symbol_get_bfdsym (sym))->internal_elf_sym.st_other;
}
