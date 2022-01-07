
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int REAL_VALUE_TYPE ;


 int NULL_TREE ;
 scalar_t__ REAL_EXP (int *) ;
 int REAL_TYPE ;
 int SET_REAL_EXP (int *,scalar_t__) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int build_real (int ,int ) ;
 int dconstpi ;
 int real_convert (int *,int ,int *) ;
 scalar_t__ real_onep (int ) ;
 scalar_t__ real_zerop (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_atan (tree arglist, tree type)
{

  tree arg = TREE_VALUE (arglist);

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;


  if (real_zerop (arg))
    return arg;


  if (real_onep (arg))
    {
      REAL_VALUE_TYPE cst;

      real_convert (&cst, TYPE_MODE (type), &dconstpi);
      SET_REAL_EXP (&cst, REAL_EXP (&cst) - 2);
      return build_real (type, cst);
    }

  return NULL_TREE;
}
