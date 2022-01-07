
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_scope {int dummy; } ;
struct cleanup {int dummy; } ;


 int c_parse () ;
 struct macro_scope* default_macro_scope () ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ expression_context_block ;
 int expression_context_pc ;
 void* expression_macro_lookup_baton ;
 int expression_macro_lookup_func ;
 int find_pc_line (int ,int ) ;
 int free_current_contents ;
 int gdb_assert (int) ;
 int macro_original_text ;
 struct cleanup* make_cleanup (int ,struct macro_scope**) ;
 int null_macro_lookup ;
 struct macro_scope* sal_macro_scope (int ) ;
 int scan_macro_cleanup ;
 int standard_macro_lookup ;

__attribute__((used)) static int
c_preprocess_and_parse (void)
{

  struct macro_scope *scope = 0;
  struct cleanup *back_to = make_cleanup (free_current_contents, &scope);

  if (expression_context_block)
    scope = sal_macro_scope (find_pc_line (expression_context_pc, 0));
  else
    scope = default_macro_scope ();

  if (scope)
    {
      expression_macro_lookup_func = standard_macro_lookup;
      expression_macro_lookup_baton = (void *) scope;
    }
  else
    {
      expression_macro_lookup_func = null_macro_lookup;
      expression_macro_lookup_baton = 0;
    }

  gdb_assert (! macro_original_text);
  make_cleanup (scan_macro_cleanup, 0);

  {
    int result = c_parse ();
    do_cleanups (back_to);
    return result;
  }
}
