
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 char const* SYMBOL_LINKAGE_NAME (struct symbol*) ;
 int SYMBOL_NATURAL_NAME (struct symbol*) ;
 int * SYMBOL_TYPE (struct symbol*) ;
 char* remove_params (int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 struct symbol** sym_return_val ;
 int sym_return_val_index ;
 int sym_return_val_size ;
 int xfree (char*) ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static void
overload_list_add_symbol (struct symbol *sym, const char *oload_name)
{
  int newsize;
  int i;
  char *sym_name;


  if (SYMBOL_TYPE (sym) == ((void*)0))
    return;


  for (i = 0; i < sym_return_val_index; ++i)
    if (strcmp (SYMBOL_LINKAGE_NAME (sym),
  SYMBOL_LINKAGE_NAME (sym_return_val[i])) == 0)
      return;


  sym_name = remove_params (SYMBOL_NATURAL_NAME (sym));
  if (!sym_name)
    return;


  if (strcmp (sym_name, oload_name) != 0)
    {
      xfree (sym_name);
      return;
    }

  xfree (sym_name);



  if (sym_return_val_index + 3 > sym_return_val_size)
    {
      newsize = (sym_return_val_size *= 2) * sizeof (struct symbol *);
      sym_return_val = (struct symbol **) xrealloc ((char *) sym_return_val, newsize);
    }
  sym_return_val[sym_return_val_index++] = sym;
  sym_return_val[sym_return_val_index] = ((void*)0);
}
