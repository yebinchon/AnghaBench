
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 int BUILT_IN_ATAN ;
 int BUILT_IN_ATANF ;
 int BUILT_IN_ATANL ;
 int NULL_TREE ;
 int REAL_TYPE ;
 int TREE_OPERAND (int ,int) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int builtin_mathfn_code (int ) ;
 scalar_t__ flag_unsafe_math_optimizations ;
 scalar_t__ real_zerop (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_tan (tree arglist)
{
  enum built_in_function fcode;
  tree arg = TREE_VALUE (arglist);

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;


  if (real_zerop (arg))
    return arg;


  fcode = builtin_mathfn_code (arg);
  if (flag_unsafe_math_optimizations
      && (fcode == BUILT_IN_ATAN
   || fcode == BUILT_IN_ATANF
   || fcode == BUILT_IN_ATANL))
    return TREE_VALUE (TREE_OPERAND (arg, 1));

  return NULL_TREE;
}
