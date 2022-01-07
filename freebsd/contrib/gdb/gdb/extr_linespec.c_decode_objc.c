
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int pc; scalar_t__ end; scalar_t__ line; scalar_t__ symtab; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int BLOCKVECTOR (struct symtab*) ;
 struct block* BLOCKVECTOR_BLOCK (int ,int ) ;
 scalar_t__ LOC_BLOCK ;
 int STATIC_BLOCK ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_LINKAGE_NAME (struct symbol*) ;
 int SYMBOL_NATURAL_NAME (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 scalar_t__ alloca (int) ;
 int build_canonical_line_spec (struct symtab_and_line*,int ,char***) ;
 struct symtabs_and_lines decode_line_2 (struct symbol**,int,int,char***) ;
 struct symtab_and_line find_function_start_sal (struct symbol*,int) ;
 char* find_imps (struct symtab*,struct block*,char*,struct symbol**,int*,int*) ;
 struct symbol* find_pc_function (int ) ;
 struct block* get_selected_block (int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int warning (char*,int ) ;
 scalar_t__ xmalloc (int) ;

struct symtabs_and_lines
decode_objc (char **argptr, int funfirstline, struct symtab *file_symtab,
      char ***canonical, char *saved_arg)
{
  struct symtabs_and_lines values;
  struct symbol **sym_arr = ((void*)0);
  struct symbol *sym = ((void*)0);
  char *copy = ((void*)0);
  struct block *block = ((void*)0);
  int i1 = 0;
  int i2 = 0;

  values.sals = ((void*)0);
  values.nelts = 0;

  if (file_symtab != ((void*)0))
    block = BLOCKVECTOR_BLOCK (BLOCKVECTOR (file_symtab), STATIC_BLOCK);
  else
    block = get_selected_block (0);

  copy = find_imps (file_symtab, block, *argptr, ((void*)0), &i1, &i2);

  if (i1 > 0)
    {
      sym_arr = (struct symbol **) alloca ((i1 + 1) * sizeof (struct symbol *));
      sym_arr[i1] = 0;

      copy = find_imps (file_symtab, block, *argptr, sym_arr, &i1, &i2);
      *argptr = copy;
    }






  if (i1 == 1)
    {
      if (i2 > 0)
 {

   sym = sym_arr[0];
 }
      else
 {
   sym = find_pc_function (SYMBOL_VALUE_ADDRESS (sym_arr[0]));
   if ((sym != ((void*)0)) && strcmp (SYMBOL_LINKAGE_NAME (sym_arr[0]), SYMBOL_LINKAGE_NAME (sym)) != 0)
     {
       warning ("debugging symbol \"%s\" does not match selector; ignoring", SYMBOL_LINKAGE_NAME (sym));
       sym = ((void*)0);
     }
 }

      values.sals = (struct symtab_and_line *) xmalloc (sizeof (struct symtab_and_line));
      values.nelts = 1;

      if (sym && SYMBOL_CLASS (sym) == LOC_BLOCK)
 {

   values.sals[0] = find_function_start_sal (sym, funfirstline);
   build_canonical_line_spec (values.sals, SYMBOL_NATURAL_NAME (sym), canonical);
 }
      else
 {

   values.sals[0].symtab = 0;
   values.sals[0].line = 0;
   values.sals[0].end = 0;
   values.sals[0].pc = SYMBOL_VALUE_ADDRESS (sym_arr[0]);
 }
      return values;
    }

  if (i1 > 1)
    {

      return decode_line_2 (sym_arr, i2, funfirstline, canonical);
    }

  return values;
}
