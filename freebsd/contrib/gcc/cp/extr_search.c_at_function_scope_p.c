
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ current_scope () ;

int
at_function_scope_p (void)
{
  tree cs = current_scope ();
  return cs && TREE_CODE (cs) == FUNCTION_DECL;
}
