
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {scalar_t__ pc; int line; struct symtab* symtab; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_INT ;
 int VALUE_TYPE (struct value*) ;
 int VAR_DOMAIN ;
 struct value* access_value_history (int) ;
 int build_canonical_line_spec (struct symtab_and_line*,int *,char***) ;
 int error (char*) ;
 int init_sal (struct symtab_and_line*) ;
 int lookup_internalvar (char*) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 struct symbol* lookup_symbol (char*,int ,int ,int ,struct symtab**) ;
 struct symtabs_and_lines minsym_found (int,struct minimal_symbol*) ;
 int sscanf (char*,char*,int*) ;
 struct symtabs_and_lines symbol_found (int,char***,char*,struct symbol*,int *,struct symtab*) ;
 int value_as_long (struct value*) ;
 struct value* value_of_internalvar (int ) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct symtabs_and_lines
decode_dollar (char *copy, int funfirstline, struct symtab *default_symtab,
        char ***canonical, struct symtab *file_symtab)
{
  struct value *valx;
  int index = 0;
  int need_canonical = 0;
  struct symtabs_and_lines values;
  struct symtab_and_line val;
  char *p;
  struct symbol *sym;

  struct symtab *sym_symtab;
  struct minimal_symbol *msymbol;

  p = (copy[1] == '$') ? copy + 2 : copy + 1;
  while (*p >= '0' && *p <= '9')
    p++;
  if (!*p)
    {

      sscanf ((copy[1] == '$') ? copy + 2 : copy + 1, "%d", &index);
      valx = access_value_history ((copy[1] == '$') ? -index : index);
      if (TYPE_CODE (VALUE_TYPE (valx)) != TYPE_CODE_INT)
 error ("History values used in line specs must have integer values.");
    }
  else
    {




      sym = lookup_symbol (copy, 0, VAR_DOMAIN, 0, &sym_symtab);
      file_symtab = (struct symtab *) 0;
      need_canonical = 1;

      if (sym)
 return symbol_found (funfirstline, canonical, copy, sym,
        ((void*)0), sym_symtab);


      msymbol = lookup_minimal_symbol (copy, ((void*)0), ((void*)0));

      if (msymbol)
 return minsym_found (funfirstline, msymbol);


      need_canonical = (file_symtab == 0) ? 1 : 0;
      valx = value_of_internalvar (lookup_internalvar (copy + 1));
      if (TYPE_CODE (VALUE_TYPE (valx)) != TYPE_CODE_INT)
 error ("Convenience variables used in line specs must have integer values.");
    }

  init_sal (&val);


  val.symtab = file_symtab ? file_symtab : default_symtab;
  val.line = value_as_long (valx);
  val.pc = 0;

  values.sals = (struct symtab_and_line *) xmalloc (sizeof val);
  values.sals[0] = val;
  values.nelts = 1;

  if (need_canonical)
    build_canonical_line_spec (values.sals, ((void*)0), canonical);

  return values;
}
