
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;


 scalar_t__ LOC_TYPEDEF ;
 int STRUCT_DOMAIN ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 int VAR_DOMAIN ;
 struct symbol* standard_lookup (char const*,int ) ;

struct type *
ada_find_any_type (const char *name)
{
  struct symbol *sym;

  sym = standard_lookup (name, VAR_DOMAIN);
  if (sym != ((void*)0) && SYMBOL_CLASS (sym) == LOC_TYPEDEF)
    return SYMBOL_TYPE (sym);

  sym = standard_lookup (name, STRUCT_DOMAIN);
  if (sym != ((void*)0))
    return SYMBOL_TYPE (sym);

  return ((void*)0);
}
