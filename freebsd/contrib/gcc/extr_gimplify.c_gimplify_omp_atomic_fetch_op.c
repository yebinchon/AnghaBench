
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;





 int BUILT_IN_FETCH_AND_ADD_N ;
 int BUILT_IN_FETCH_AND_AND_N ;
 int BUILT_IN_FETCH_AND_OR_N ;
 int BUILT_IN_FETCH_AND_SUB_N ;
 int BUILT_IN_FETCH_AND_XOR_N ;
 int CODE_FOR_nothing ;
 int GS_OK ;
 int GS_UNHANDLED ;


 int TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int * TREE_TYPE (int *) ;
 size_t TYPE_MODE (int *) ;
 int * build_function_call_expr (int *,int *) ;
 int ** built_in_decls ;
 scalar_t__ commutative_tree_code (int) ;
 int * fold_convert (int *,int *) ;
 scalar_t__ goa_lhs_expr_p (int *,int *) ;
 int* sync_add_optab ;
 int* sync_and_optab ;
 int* sync_ior_optab ;
 int* sync_xor_optab ;
 int * tree_cons (int *,int *,int *) ;

__attribute__((used)) static enum gimplify_status
gimplify_omp_atomic_fetch_op (tree *expr_p, tree addr, tree rhs, int index)
{
  enum built_in_function base;
  tree decl, args, itype;
  enum insn_code *optab;


  switch (TREE_CODE (rhs))
    {
    case 128:
      base = BUILT_IN_FETCH_AND_ADD_N;
      optab = sync_add_optab;
      break;
    case 129:
      base = BUILT_IN_FETCH_AND_SUB_N;
      optab = sync_add_optab;
      break;
    case 132:
      base = BUILT_IN_FETCH_AND_AND_N;
      optab = sync_and_optab;
      break;
    case 131:
      base = BUILT_IN_FETCH_AND_OR_N;
      optab = sync_ior_optab;
      break;
    case 130:
      base = BUILT_IN_FETCH_AND_XOR_N;
      optab = sync_xor_optab;
      break;
    default:
      return GS_UNHANDLED;
    }


  if (goa_lhs_expr_p (TREE_OPERAND (rhs, 0), addr))
    rhs = TREE_OPERAND (rhs, 1);
  else if (commutative_tree_code (TREE_CODE (rhs))
    && goa_lhs_expr_p (TREE_OPERAND (rhs, 1), addr))
    rhs = TREE_OPERAND (rhs, 0);
  else
    return GS_UNHANDLED;

  decl = built_in_decls[base + index + 1];
  itype = TREE_TYPE (TREE_TYPE (decl));

  if (optab[TYPE_MODE (itype)] == CODE_FOR_nothing)
    return GS_UNHANDLED;

  args = tree_cons (((void*)0), fold_convert (itype, rhs), ((void*)0));
  args = tree_cons (((void*)0), addr, args);
  *expr_p = build_function_call_expr (decl, args);
  return GS_OK;
}
