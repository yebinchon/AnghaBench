
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ MSYMBOL_TYPE (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int ) ;
 scalar_t__ mst_solib_trampoline ;

struct minimal_symbol *
lookup_solib_trampoline_symbol_by_pc (CORE_ADDR pc)
{
  struct minimal_symbol *msymbol = lookup_minimal_symbol_by_pc (pc);

  if (msymbol != ((void*)0) && MSYMBOL_TYPE (msymbol) == mst_solib_trampoline)
    return msymbol;
  return ((void*)0);
}
