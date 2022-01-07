
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 struct type* SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 char* TYPE_NAME (struct type*) ;
 int VAR_DOMAIN ;
 scalar_t__ alloca (scalar_t__) ;
 int error (char*,char*) ;
 struct symbol* lookup_symbol (char*,struct block*,int ,int ,struct symtab**) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

struct type *
lookup_template_type (char *name, struct type *type, struct block *block)
{
  struct symbol *sym;
  char *nam = (char *) alloca (strlen (name) + strlen (TYPE_NAME (type)) + 4);
  strcpy (nam, name);
  strcat (nam, "<");
  strcat (nam, TYPE_NAME (type));
  strcat (nam, " >");

  sym = lookup_symbol (nam, block, VAR_DOMAIN, 0, (struct symtab **) ((void*)0));

  if (sym == ((void*)0))
    {
      error ("No template type named %s.", name);
    }
  if (TYPE_CODE (SYMBOL_TYPE (sym)) != TYPE_CODE_STRUCT)
    {
      error ("This context has class, union or enum %s, not a struct.", name);
    }
  return (SYMBOL_TYPE (sym));
}
