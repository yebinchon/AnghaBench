
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {scalar_t__ line; struct symtab* symtab; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct blockvector {int dummy; } ;
struct block {int dummy; } ;


 struct blockvector* BLOCKVECTOR (struct symtab*) ;
 struct block* BLOCKVECTOR_BLOCK (struct blockvector*,int ) ;
 scalar_t__ LOC_BLOCK ;
 int STATIC_BLOCK ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 scalar_t__ SYMBOL_LINE (struct symbol*) ;
 int VAR_DOMAIN ;
 int build_canonical_line_spec (struct symtab_and_line*,char*,char***) ;
 int error (char*,char*) ;
 struct symtab_and_line find_function_start_sal (struct symbol*,int) ;
 int * lookup_block_symbol (struct block*,char*,int *,int ) ;
 int memset (struct symtab_and_line*,int ,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct symtabs_and_lines
symbol_found (int funfirstline, char ***canonical, char *copy,
       struct symbol *sym, struct symtab *file_symtab,
       struct symtab *sym_symtab)
{
  struct symtabs_and_lines values;

  if (SYMBOL_CLASS (sym) == LOC_BLOCK)
    {

      values.sals = (struct symtab_and_line *)
 xmalloc (sizeof (struct symtab_and_line));
      values.sals[0] = find_function_start_sal (sym, funfirstline);
      values.nelts = 1;







      if (file_symtab == 0)
 {
   struct blockvector *bv = BLOCKVECTOR (sym_symtab);
   struct block *b = BLOCKVECTOR_BLOCK (bv, STATIC_BLOCK);
   if (lookup_block_symbol (b, copy, ((void*)0), VAR_DOMAIN) != ((void*)0))
     build_canonical_line_spec (values.sals, copy, canonical);
 }
      return values;
    }
  else
    {
      if (funfirstline)
 error ("\"%s\" is not a function", copy);
      else if (SYMBOL_LINE (sym) != 0)
 {

   values.sals = (struct symtab_and_line *)
     xmalloc (sizeof (struct symtab_and_line));
   values.nelts = 1;
   memset (&values.sals[0], 0, sizeof (values.sals[0]));
   values.sals[0].symtab = sym_symtab;
   values.sals[0].line = SYMBOL_LINE (sym);
   return values;
 }
      else





 error ("Line number not known for symbol \"%s\"", copy);
    }
}
