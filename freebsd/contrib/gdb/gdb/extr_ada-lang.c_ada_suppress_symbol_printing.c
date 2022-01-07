
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 int DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 scalar_t__ STRUCT_DOMAIN ;
 scalar_t__ SYMBOL_DOMAIN (struct symbol*) ;
 int is_suppressed_name (int ) ;

int
ada_suppress_symbol_printing (struct symbol *sym)
{
  if (SYMBOL_DOMAIN (sym) == STRUCT_DOMAIN)
    return 1;
  else
    return is_suppressed_name (DEPRECATED_SYMBOL_NAME (sym));
}
