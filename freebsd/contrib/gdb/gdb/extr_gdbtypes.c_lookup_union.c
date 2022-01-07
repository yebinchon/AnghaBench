
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 scalar_t__ DECLARED_TYPE_UNION ;
 scalar_t__ HAVE_CPLUS_STRUCT (struct type*) ;
 int STRUCT_DOMAIN ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_UNION ;
 scalar_t__ TYPE_DECLARED_TYPE (struct type*) ;
 int error (char*,char*) ;
 struct symbol* lookup_symbol (char*,struct block*,int ,int ,struct symtab**) ;

struct type *
lookup_union (char *name, struct block *block)
{
  struct symbol *sym;
  struct type *t;

  sym = lookup_symbol (name, block, STRUCT_DOMAIN, 0,
         (struct symtab **) ((void*)0));

  if (sym == ((void*)0))
    error ("No union type named %s.", name);

  t = SYMBOL_TYPE (sym);

  if (TYPE_CODE (t) == TYPE_CODE_UNION)
    return (t);




  if (HAVE_CPLUS_STRUCT (t))
    if (TYPE_DECLARED_TYPE (t) == DECLARED_TYPE_UNION)
      return (t);


  error ("This context has class, struct or enum %s, not a union.", name);
}
