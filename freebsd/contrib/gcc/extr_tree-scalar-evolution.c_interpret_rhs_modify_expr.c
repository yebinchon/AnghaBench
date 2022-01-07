
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;



 int ASSERT_EXPR_VAR (int ) ;







 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int analyze_scalar_evolution (struct loop*,int ) ;
 int chrec_convert (int ,int ,int ) ;
 int chrec_dont_know ;
 int chrec_fold_minus (int ,int ,int ) ;
 int chrec_fold_multiply (int ,int ,int ) ;
 int chrec_fold_plus (int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int integer_minus_one_node ;
 scalar_t__ is_gimple_min_invariant (int ) ;

__attribute__((used)) static tree
interpret_rhs_modify_expr (struct loop *loop, tree at_stmt,
      tree opnd1, tree type)
{
  tree res, opnd10, opnd11, chrec10, chrec11;

  if (is_gimple_min_invariant (opnd1))
    return chrec_convert (type, opnd1, at_stmt);

  switch (TREE_CODE (opnd1))
    {
    case 129:
      opnd10 = TREE_OPERAND (opnd1, 0);
      opnd11 = TREE_OPERAND (opnd1, 1);
      chrec10 = analyze_scalar_evolution (loop, opnd10);
      chrec11 = analyze_scalar_evolution (loop, opnd11);
      chrec10 = chrec_convert (type, chrec10, at_stmt);
      chrec11 = chrec_convert (type, chrec11, at_stmt);
      res = chrec_fold_plus (type, chrec10, chrec11);
      break;

    case 133:
      opnd10 = TREE_OPERAND (opnd1, 0);
      opnd11 = TREE_OPERAND (opnd1, 1);
      chrec10 = analyze_scalar_evolution (loop, opnd10);
      chrec11 = analyze_scalar_evolution (loop, opnd11);
      chrec10 = chrec_convert (type, chrec10, at_stmt);
      chrec11 = chrec_convert (type, chrec11, at_stmt);
      res = chrec_fold_minus (type, chrec10, chrec11);
      break;

    case 131:
      opnd10 = TREE_OPERAND (opnd1, 0);
      chrec10 = analyze_scalar_evolution (loop, opnd10);
      chrec10 = chrec_convert (type, chrec10, at_stmt);

      res = chrec_fold_multiply (type, chrec10,
     fold_convert (type, integer_minus_one_node));
      break;

    case 132:
      opnd10 = TREE_OPERAND (opnd1, 0);
      opnd11 = TREE_OPERAND (opnd1, 1);
      chrec10 = analyze_scalar_evolution (loop, opnd10);
      chrec11 = analyze_scalar_evolution (loop, opnd11);
      chrec10 = chrec_convert (type, chrec10, at_stmt);
      chrec11 = chrec_convert (type, chrec11, at_stmt);
      res = chrec_fold_multiply (type, chrec10, chrec11);
      break;

    case 128:
      res = chrec_convert (type, analyze_scalar_evolution (loop, opnd1),
      at_stmt);
      break;

    case 135:
      opnd10 = ASSERT_EXPR_VAR (opnd1);
      res = chrec_convert (type, analyze_scalar_evolution (loop, opnd10),
      at_stmt);
      break;

    case 130:
    case 134:
      opnd10 = TREE_OPERAND (opnd1, 0);
      chrec10 = analyze_scalar_evolution (loop, opnd10);
      res = chrec_convert (type, chrec10, at_stmt);
      break;

    default:
      res = chrec_dont_know;
      break;
    }

  return res;
}
