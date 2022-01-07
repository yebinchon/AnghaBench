
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct cleanup {int dummy; } ;


 int discard_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup (int ,struct symbol**) ;
 int make_symbol_overload_list_using (char const*,char const*) ;
 struct symbol** sym_return_val ;
 scalar_t__ sym_return_val_index ;
 int sym_return_val_size ;
 int xfree ;
 struct symbol** xmalloc (int) ;

struct symbol **
make_symbol_overload_list (const char *func_name,
      const char *namespace)
{
  struct cleanup *old_cleanups;

  sym_return_val_size = 100;
  sym_return_val_index = 0;
  sym_return_val = xmalloc ((sym_return_val_size + 1) *
       sizeof (struct symbol *));
  sym_return_val[0] = ((void*)0);

  old_cleanups = make_cleanup (xfree, sym_return_val);

  make_symbol_overload_list_using (func_name, namespace);

  discard_cleanups (old_cleanups);

  return sym_return_val;
}
