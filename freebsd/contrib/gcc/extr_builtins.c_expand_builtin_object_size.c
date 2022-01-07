
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;
typedef int rtx ;
typedef int location_t ;


 int EXPR_LOCATION (char*) ;
 scalar_t__ INTEGER_CST ;
 int INTEGER_TYPE ;
 int POINTER_TYPE ;
 int STRIP_NOPS (char*) ;
 int TREE_CHAIN (char*) ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_OPERAND (char*,int) ;
 char* TREE_VALUE (int ) ;
 int VOID_TYPE ;
 scalar_t__ compare_tree_int (char*,int) ;
 int const0_rtx ;
 int constm1_rtx ;
 int error (char*,int *,char*) ;
 int expand_builtin_trap () ;
 char* get_callee_fndecl (char*) ;
 scalar_t__ tree_int_cst_sgn (char*) ;
 int tree_low_cst (char*,int ) ;
 int validate_arglist (char*,int ,int ,int ) ;

rtx
expand_builtin_object_size (tree exp)
{
  tree ost;
  int object_size_type;
  tree fndecl = get_callee_fndecl (exp);
  tree arglist = TREE_OPERAND (exp, 1);
  location_t locus = EXPR_LOCATION (exp);

  if (!validate_arglist (arglist, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    {
      error ("%Hfirst argument of %D must be a pointer, second integer constant",
      &locus, fndecl);
      expand_builtin_trap ();
      return const0_rtx;
    }

  ost = TREE_VALUE (TREE_CHAIN (arglist));
  STRIP_NOPS (ost);

  if (TREE_CODE (ost) != INTEGER_CST
      || tree_int_cst_sgn (ost) < 0
      || compare_tree_int (ost, 3) > 0)
    {
      error ("%Hlast argument of %D is not integer constant between 0 and 3",
      &locus, fndecl);
      expand_builtin_trap ();
      return const0_rtx;
    }

  object_size_type = tree_low_cst (ost, 0);

  return object_size_type < 2 ? constm1_rtx : const0_rtx;
}
