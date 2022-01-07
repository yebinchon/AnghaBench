
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SSA_NAME_VAR (scalar_t__) ;
 scalar_t__ get_current_def (scalar_t__) ;
 scalar_t__ get_default_def_for (scalar_t__) ;
 int set_current_def (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
get_reaching_def (tree var)
{
  tree currdef_var, avar;


  currdef_var = get_current_def (var);



  if (currdef_var == NULL_TREE)
    {
      avar = DECL_P (var) ? var : SSA_NAME_VAR (var);
      currdef_var = get_default_def_for (avar);
      set_current_def (var, currdef_var);
    }



  return currdef_var;
}
