
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ IS_THUMB_ADDR (int ) ;
 int MSYMBOL_IS_SPECIAL (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int ) ;

int
arm_pc_is_thumb (CORE_ADDR memaddr)
{
  struct minimal_symbol *sym;


  if (IS_THUMB_ADDR (memaddr))
    return 1;


  sym = lookup_minimal_symbol_by_pc (memaddr);
  if (sym)
    {
      return (MSYMBOL_IS_SPECIAL (sym));
    }
  else
    {
      return 0;
    }
}
