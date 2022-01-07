
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct altivec_builtin_types {size_t overloaded_code; scalar_t__ code; int ret_type; } ;


 size_t ALTIVEC_BUILTIN_VCMPGEFP_P ;
 scalar_t__ ALTIVEC_BUILTIN_VCMPGE_P ;
 int BIT_XOR_EXPR ;
 int NULL_TREE ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 int build_function_call_expr (int ,int ) ;
 int build_int_cst (int ,int) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int * rs6000_builtin_decls ;
 int rs6000_builtin_type (int ) ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static tree
altivec_build_resolved_builtin (tree *args, int n,
    const struct altivec_builtin_types *desc)
{
  tree impl_fndecl = rs6000_builtin_decls[desc->overloaded_code];
  tree ret_type = rs6000_builtin_type (desc->ret_type);
  tree argtypes = TYPE_ARG_TYPES (TREE_TYPE (impl_fndecl));
  tree arglist = NULL_TREE, arg_type[3];

  int i;
  for (i = 0; i < n; i++)
    arg_type[i] = TREE_VALUE (argtypes), argtypes = TREE_CHAIN (argtypes);
  if (desc->code == ALTIVEC_BUILTIN_VCMPGE_P
      && desc->overloaded_code != ALTIVEC_BUILTIN_VCMPGEFP_P)
    {
      tree t;
      t = args[2], args[2] = args[1], args[1] = t;
      t = arg_type[2], arg_type[2] = arg_type[1], arg_type[1] = t;

      args[0] = fold_build2 (BIT_XOR_EXPR, TREE_TYPE (args[0]), args[0],
        build_int_cst (NULL_TREE, 2));
    }

  while (--n >= 0)
    arglist = tree_cons (NULL_TREE,
    fold_convert (arg_type[n], args[n]),
    arglist);

  return fold_convert (ret_type,
         build_function_call_expr (impl_fndecl, arglist));
}
