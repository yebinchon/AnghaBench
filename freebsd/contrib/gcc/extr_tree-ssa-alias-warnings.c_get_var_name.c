
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_NAME (int ) ;
 char const* IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ find_first_artificial_name (int ) ;
 int get_ssa_base (int ) ;

__attribute__((used)) static const char *
get_var_name (tree var)
{
  if (TREE_CODE (var) == SSA_NAME)
    return get_var_name (get_ssa_base (var));

  if (find_first_artificial_name (var))
    return "{unknown}";

  if (TREE_CODE (var) == VAR_DECL || TREE_CODE (var) == PARM_DECL)
    if (DECL_NAME (var))
      return IDENTIFIER_POINTER (DECL_NAME (var));

  return "{unknown}";
}
