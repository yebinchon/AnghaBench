
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 int DECL_FUNCTION_CODE (int ) ;
 int NULL_TREE ;
 int REAL_TYPE ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_tree_list (int ,int ) ;
 int builtin_mathfn_code (int ) ;
 int flag_errno_math ;
 int fold_convert (int ,int ) ;
 scalar_t__ integer_valued_real_p (int ) ;
 int mathfn_built_in (int ,int) ;
 scalar_t__ optimize ;
 int strip_float_extensions (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_trunc_transparent_mathfn (tree fndecl, tree arglist)
{
  enum built_in_function fcode = DECL_FUNCTION_CODE (fndecl);
  tree arg;

  if (! validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return 0;

  arg = TREE_VALUE (arglist);

  if (fcode == builtin_mathfn_code (arg))
    return arg;



  if (! flag_errno_math && integer_valued_real_p (arg))
    return arg;

  if (optimize)
    {
      tree arg0 = strip_float_extensions (arg);
      tree ftype = TREE_TYPE (TREE_TYPE (fndecl));
      tree newtype = TREE_TYPE (arg0);
      tree decl;

      if (TYPE_PRECISION (newtype) < TYPE_PRECISION (ftype)
   && (decl = mathfn_built_in (newtype, fcode)))
 {
   arglist =
     build_tree_list (NULL_TREE, fold_convert (newtype, arg0));
   return fold_convert (ftype,
          build_function_call_expr (decl, arglist));
 }
    }
  return 0;
}
