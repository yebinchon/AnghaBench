
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
struct breakpoint {int silent; int addr_string; int enable_state; } ;


 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int bp_disabled ;
 int bp_longjmp ;
 int bp_longjmp_resume ;
 struct breakpoint* create_internal_breakpoint (int ,int ) ;
 struct minimal_symbol* lookup_minimal_symbol_text (char*,int *) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
create_longjmp_breakpoint (char *func_name)
{
  struct breakpoint *b;
  struct minimal_symbol *m;

  if (func_name == ((void*)0))
    b = create_internal_breakpoint (0, bp_longjmp_resume);
  else
    {
      if ((m = lookup_minimal_symbol_text (func_name, ((void*)0))) == ((void*)0))
 return;

      b = create_internal_breakpoint (SYMBOL_VALUE_ADDRESS (m), bp_longjmp);
    }

  b->enable_state = bp_disabled;
  b->silent = 1;
  if (func_name)
    b->addr_string = xstrdup (func_name);
}
