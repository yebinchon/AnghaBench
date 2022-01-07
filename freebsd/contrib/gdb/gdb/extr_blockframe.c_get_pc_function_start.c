
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int CORE_ADDR ;


 int BLOCK_START (struct block*) ;
 struct block* SYMBOL_BLOCK_VALUE (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct block* block_for_pc (int ) ;
 struct symbol* block_function (struct block*) ;
 scalar_t__ find_pc_section (int ) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int ) ;

CORE_ADDR
get_pc_function_start (CORE_ADDR pc)
{
  struct block *bl;
  struct minimal_symbol *msymbol;

  bl = block_for_pc (pc);
  if (bl)
    {
      struct symbol *symbol = block_function (bl);

      if (symbol)
 {
   bl = SYMBOL_BLOCK_VALUE (symbol);
   return BLOCK_START (bl);
 }
    }

  msymbol = lookup_minimal_symbol_by_pc (pc);
  if (msymbol)
    {
      CORE_ADDR fstart = SYMBOL_VALUE_ADDRESS (msymbol);

      if (find_pc_section (fstart))
 return fstart;
    }

  return 0;
}
