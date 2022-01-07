
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;


 int BLOCKVECTOR (struct symtab*) ;
 int BLOCKVECTOR_BLOCK (int ,int ) ;
 int STATIC_BLOCK ;
 int VAR_DOMAIN ;
 int error (char*,...) ;
 int error_silent (char*,char*) ;
 int get_selected_block (int ) ;
 int have_full_symbols () ;
 int have_minimal_symbols () ;
 int have_partial_symbols () ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 struct symbol* lookup_symbol (char*,int ,int ,int ,struct symtab**) ;
 struct symtabs_and_lines minsym_found (int,struct minimal_symbol*) ;
 struct symtabs_and_lines symbol_found (int,char***,char*,struct symbol*,struct symtab*,struct symtab*) ;

__attribute__((used)) static struct symtabs_and_lines
decode_variable (char *copy, int funfirstline, char ***canonical,
   struct symtab *file_symtab, int *not_found_ptr)
{
  struct symbol *sym;

  struct symtab *sym_symtab;

  struct minimal_symbol *msymbol;

  sym = lookup_symbol (copy,
         (file_symtab
   ? BLOCKVECTOR_BLOCK (BLOCKVECTOR (file_symtab),
          STATIC_BLOCK)
   : get_selected_block (0)),
         VAR_DOMAIN, 0, &sym_symtab);

  if (sym != ((void*)0))
    return symbol_found (funfirstline, canonical, copy, sym,
    file_symtab, sym_symtab);

  msymbol = lookup_minimal_symbol (copy, ((void*)0), ((void*)0));

  if (msymbol != ((void*)0))
    return minsym_found (funfirstline, msymbol);

  if (!have_full_symbols () &&
      !have_partial_symbols () && !have_minimal_symbols ())
    error ("No symbol table is loaded.  Use the \"file\" command.");

  if (not_found_ptr)
    {
      *not_found_ptr = 1;







      error_silent ("Function \"%s\" not defined.", copy);
    }

  error ("Function \"%s\" not defined.", copy);
}
