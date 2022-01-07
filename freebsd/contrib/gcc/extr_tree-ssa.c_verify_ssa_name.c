
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_IN_FREE_LIST (int ) ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 int error (char*) ;
 int * get_subvars_for_var (int ) ;
 scalar_t__ is_gimple_reg (int ) ;
 scalar_t__ var_ann (int ) ;

__attribute__((used)) static bool
verify_ssa_name (tree ssa_name, bool is_virtual)
{
  if (TREE_CODE (ssa_name) != SSA_NAME)
    {
      error ("expected an SSA_NAME object");
      return 1;
    }

  if (TREE_TYPE (ssa_name) != TREE_TYPE (SSA_NAME_VAR (ssa_name)))
    {
      error ("type mismatch between an SSA_NAME and its symbol");
      return 1;
    }

  if (SSA_NAME_IN_FREE_LIST (ssa_name))
    {
      error ("found an SSA_NAME that had been released into the free pool");
      return 1;
    }

  if (is_virtual && is_gimple_reg (ssa_name))
    {
      error ("found a virtual definition for a GIMPLE register");
      return 1;
    }

  if (!is_virtual && !is_gimple_reg (ssa_name))
    {
      error ("found a real definition for a non-register");
      return 1;
    }

  if (is_virtual && var_ann (SSA_NAME_VAR (ssa_name))
      && get_subvars_for_var (SSA_NAME_VAR (ssa_name)) != ((void*)0))
    {
      error ("found real variable when subvariables should have appeared");
      return 1;
    }

  return 0;
}
