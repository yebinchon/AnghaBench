
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int dummy; } ;
struct symbol {int dummy; } ;


 scalar_t__ LOC_BLOCK ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_PRINT_NAME (struct symbol*) ;
 struct symbol** alloca (int) ;
 int collect_methods (char*,struct type*,struct symbol**) ;
 int cplusplus_error (char*,char*,int ,...) ;
 struct symtabs_and_lines decode_line_2 (struct symbol**,int,int,char***) ;
 struct symtab_and_line find_function_start_sal (struct symbol*,int) ;
 scalar_t__ is_operator_name (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int total_number_of_methods (struct type*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct symtabs_and_lines
find_method (int funfirstline, char ***canonical, char *saved_arg,
      char *copy, struct type *t, struct symbol *sym_class)
{
  struct symtabs_and_lines values;
  struct symbol *sym = 0;
  int i1;
  struct symbol **sym_arr = alloca (total_number_of_methods (t)
         * sizeof (struct symbol *));




  i1 = collect_methods (copy, t, sym_arr);

  if (i1 == 1)
    {

      sym = sym_arr[0];

      if (sym && SYMBOL_CLASS (sym) == LOC_BLOCK)
 {
   values.sals = (struct symtab_and_line *)
     xmalloc (sizeof (struct symtab_and_line));
   values.nelts = 1;
   values.sals[0] = find_function_start_sal (sym,
          funfirstline);
 }
      else
 {
   values.nelts = 0;
 }
      return values;
    }
  if (i1 > 0)
    {


      return decode_line_2 (sym_arr, i1, funfirstline, canonical);
    }
  else
    {
      char *tmp;

      if (is_operator_name (copy))
 {
   tmp = (char *) alloca (strlen (copy + 3) + 9);
   strcpy (tmp, "operator ");
   strcat (tmp, copy + 3);
 }
      else
 tmp = copy;
      if (tmp[0] == '~')
 cplusplus_error (saved_arg,
    "the class `%s' does not have destructor defined\n",
    SYMBOL_PRINT_NAME (sym_class));
      else
 cplusplus_error (saved_arg,
    "the class %s does not have any method named %s\n",
    SYMBOL_PRINT_NAME (sym_class), tmp);
    }
}
