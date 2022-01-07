
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ REAL_CST ;
 int REAL_TYPE ;
 int REAL_VALUE_ISNAN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_REAL_CST (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int build_real (int ,int ) ;
 int flag_errno_math ;
 int fold_trunc_transparent_mathfn (int ,int ) ;
 int real_floor (int *,int ,int *) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_floor (tree fndecl, tree arglist)
{
  tree arg;

  if (! validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return 0;


  arg = TREE_VALUE (arglist);
  if (TREE_CODE (arg) == REAL_CST && ! TREE_CONSTANT_OVERFLOW (arg))
    {
      REAL_VALUE_TYPE x;

      x = TREE_REAL_CST (arg);
      if (! REAL_VALUE_ISNAN (x) || ! flag_errno_math)
 {
   tree type = TREE_TYPE (TREE_TYPE (fndecl));
   REAL_VALUE_TYPE r;

   real_floor (&r, TYPE_MODE (type), &x);
   return build_real (type, r);
 }
    }

  return fold_trunc_transparent_mathfn (fndecl, arglist);
}
