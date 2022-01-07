
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct function {scalar_t__ decl; struct function* outer; } ;


 int gcc_unreachable () ;
 struct function* outer_function_chain ;

struct function *
find_function_data (tree decl)
{
  struct function *p;

  for (p = outer_function_chain; p; p = p->outer)
    if (p->decl == decl)
      return p;

  gcc_unreachable ();
}
