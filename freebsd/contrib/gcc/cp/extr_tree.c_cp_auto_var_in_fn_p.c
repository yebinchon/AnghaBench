
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ nonstatic_local_decl_p (scalar_t__) ;

int
cp_auto_var_in_fn_p (tree var, tree fn)
{
  return (DECL_P (var) && DECL_CONTEXT (var) == fn
   && nonstatic_local_decl_p (var));
}
