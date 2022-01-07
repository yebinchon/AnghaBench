
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef int bfd_vma ;


 scalar_t__ is_mips16_addr (int ) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int ) ;
 int msymbol_is_special (struct minimal_symbol*) ;

__attribute__((used)) static int
pc_is_mips16 (bfd_vma memaddr)
{
  struct minimal_symbol *sym;


  if (is_mips16_addr (memaddr))
    return 1;




  sym = lookup_minimal_symbol_by_pc (memaddr);
  if (sym)
    return msymbol_is_special (sym);
  else
    return 0;
}
