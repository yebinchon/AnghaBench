
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
typedef int REAL_VALUE_TYPE ;
typedef scalar_t__ HOST_WIDE_INT ;


 int const BUILT_IN_LOG ;
 int const BUILT_IN_LOG10 ;
 int const BUILT_IN_LOG10F ;
 int const BUILT_IN_LOG10L ;
 int const BUILT_IN_LOG2 ;
 int const BUILT_IN_LOG2F ;
 int const BUILT_IN_LOG2L ;
 int const BUILT_IN_LOGF ;
 int const BUILT_IN_LOGL ;
 scalar_t__ REAL_CST ;
 int REAL_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_REAL_CST (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int build_real (int ,int ) ;
 int builtin_mathfn_code (int ) ;
 int dconst1 ;
 int const dconst10 ;
 int const dconst2 ;
 int const dconste ;
 scalar_t__ flag_unsafe_math_optimizations ;
 int fold_convert (int ,int ) ;
 int real_convert (int *,int ,int const*) ;
 int real_from_integer (int *,int ,scalar_t__,int,int ) ;
 scalar_t__ real_identical (int *,int *) ;
 scalar_t__ real_onep (int ) ;
 int real_powi (int *,int ,int const*,scalar_t__) ;
 scalar_t__ real_to_integer (int *) ;
 scalar_t__ real_zerop (int ) ;
 scalar_t__ validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_exponent (tree fndecl, tree arglist,
         const REAL_VALUE_TYPE *value)
{
  if (validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    {
      tree type = TREE_TYPE (TREE_TYPE (fndecl));
      tree arg = TREE_VALUE (arglist);


      if (real_zerop (arg))
 return build_real (type, dconst1);


      if (real_onep (arg))
 {
   REAL_VALUE_TYPE cst;

   real_convert (&cst, TYPE_MODE (type), value);
   return build_real (type, cst);
 }


      if (flag_unsafe_math_optimizations
   && TREE_CODE (arg) == REAL_CST
   && ! TREE_CONSTANT_OVERFLOW (arg))
 {
   REAL_VALUE_TYPE cint;
   REAL_VALUE_TYPE c;
   HOST_WIDE_INT n;

   c = TREE_REAL_CST (arg);
   n = real_to_integer (&c);
   real_from_integer (&cint, VOIDmode, n,
        n < 0 ? -1 : 0, 0);
   if (real_identical (&c, &cint))
     {
       REAL_VALUE_TYPE x;

       real_powi (&x, TYPE_MODE (type), value, n);
       return build_real (type, x);
     }
 }


      if (flag_unsafe_math_optimizations)
 {
   const enum built_in_function fcode = builtin_mathfn_code (arg);

   if ((value == &dconste
        && (fcode == BUILT_IN_LOG
     || fcode == BUILT_IN_LOGF
     || fcode == BUILT_IN_LOGL))
       || (value == &dconst2
    && (fcode == BUILT_IN_LOG2
        || fcode == BUILT_IN_LOG2F
        || fcode == BUILT_IN_LOG2L))
       || (value == &dconst10
    && (fcode == BUILT_IN_LOG10
        || fcode == BUILT_IN_LOG10F
        || fcode == BUILT_IN_LOG10L)))
     return fold_convert (type, TREE_VALUE (TREE_OPERAND (arg, 1)));
 }
    }

  return 0;
}
