
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 scalar_t__ LOC_TYPEDEF ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 int VAR_DOMAIN ;
 int error (char*,char*) ;
 struct type* lookup_primitive_typename (char*) ;
 struct symbol* lookup_symbol (char*,struct block*,int ,int ,struct symtab**) ;

struct type *
lookup_typename (char *name, struct block *block, int noerr)
{
  struct symbol *sym;
  struct type *tmp;

  sym = lookup_symbol (name, block, VAR_DOMAIN, 0, (struct symtab **) ((void*)0));
  if (sym == ((void*)0) || SYMBOL_CLASS (sym) != LOC_TYPEDEF)
    {
      tmp = lookup_primitive_typename (name);
      if (tmp)
 {
   return (tmp);
 }
      else if (!tmp && noerr)
 {
   return (((void*)0));
 }
      else
 {
   error ("No type named %s.", name);
 }
    }
  return (SYMBOL_TYPE (sym));
}
