
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symbol {int dummy; } ;


 scalar_t__ LOC_BLOCK ;
 scalar_t__ LOC_CONST ;
 scalar_t__ LOC_TYPEDEF ;
 scalar_t__ SYMBOL_CLASS (struct partial_symbol*) ;

int
ada_maybe_exception_partial_symbol (struct partial_symbol *sym)
{
  return (SYMBOL_CLASS (sym) != LOC_TYPEDEF
   && SYMBOL_CLASS (sym) != LOC_BLOCK
   && SYMBOL_CLASS (sym) != LOC_CONST);
}
