
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int subvar_t ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_VAR (int ) ;
 int SSA_VAR_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int gcc_assert (int ) ;
 int * lookup_subvars_for_var (int ) ;

__attribute__((used)) static inline subvar_t
get_subvars_for_var (tree var)
{
  subvar_t subvars;

  gcc_assert (SSA_VAR_P (var));

  if (TREE_CODE (var) == SSA_NAME)
    subvars = *(lookup_subvars_for_var (SSA_NAME_VAR (var)));
  else
    subvars = *(lookup_subvars_for_var (var));
  return subvars;
}
