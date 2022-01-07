
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int STRUCT_DOMAIN ;
 int SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int error (char*,char*) ;
 struct symbol* lookup_symbol (char*,struct block*,int ,int ,struct symtab**) ;

struct symbol *
lookup_struct_typedef (char *name, struct block *block, int noerr)
{
  struct symbol *sym;

  sym = lookup_symbol (name, block, STRUCT_DOMAIN, 0,
         (struct symtab **) ((void*)0));

  if (sym == ((void*)0))
    {
      if (noerr)
 return 0;
      else
 error ("No struct type named %s.", name);
    }
  if (TYPE_CODE (SYMBOL_TYPE (sym)) != TYPE_CODE_STRUCT)
    {
      if (noerr)
 return 0;
      else
 error ("This context has class, union or enum %s, not a struct.",
        name);
    }
  return sym;
}
