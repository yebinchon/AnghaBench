
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int STRUCT_DOMAIN ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ENUM ;
 int error (char*,char*) ;
 struct symbol* lookup_symbol (char*,struct block*,int ,int ,struct symtab**) ;

struct type *
lookup_enum (char *name, struct block *block)
{
  struct symbol *sym;

  sym = lookup_symbol (name, block, STRUCT_DOMAIN, 0,
         (struct symtab **) ((void*)0));
  if (sym == ((void*)0))
    {
      error ("No enum type named %s.", name);
    }
  if (TYPE_CODE (SYMBOL_TYPE (sym)) != TYPE_CODE_ENUM)
    {
      error ("This context has class, struct or union %s, not an enum.", name);
    }
  return (SYMBOL_TYPE (sym));
}
