
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;





 scalar_t__ INTEGER_CST ;


 int MAX_EXPR ;
 int MIN_EXPR ;

 int NULL_TREE ;
 int STRIP_SIGN_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_OPERAND (int ,int) ;
 int const TRUTH_ORIF_EXPR ;
 int fold_build2 (int const,int ,int ,int ) ;
 int integer_one_node ;
 int integer_zero_node ;
 int invert_tree_comparison (int,int) ;
 int invert_truthvalue (int ) ;
 int omit_one_operand (int ,int ,int ) ;
 int tree_int_cst_equal (int ,int ) ;
 int tree_int_cst_lt (int ,int ) ;

__attribute__((used)) static tree
optimize_minmax_comparison (enum tree_code code, tree type, tree op0, tree op1)
{
  tree arg0 = op0;
  enum tree_code op_code;
  tree comp_const = op1;
  tree minmax_const;
  int consts_equal, consts_lt;
  tree inner;

  STRIP_SIGN_NOPS (arg0);

  op_code = TREE_CODE (arg0);
  minmax_const = TREE_OPERAND (arg0, 1);
  consts_equal = tree_int_cst_equal (minmax_const, comp_const);
  consts_lt = tree_int_cst_lt (minmax_const, comp_const);
  inner = TREE_OPERAND (arg0, 0);


  if ((op_code != MIN_EXPR && op_code != MAX_EXPR)
      || TREE_CODE (comp_const) != INTEGER_CST
      || TREE_CONSTANT_OVERFLOW (comp_const)
      || TREE_CODE (minmax_const) != INTEGER_CST
      || TREE_CONSTANT_OVERFLOW (minmax_const))
    return NULL_TREE;




  switch (code)
    {
    case 128: case 129: case 130:
      {
 tree tem = optimize_minmax_comparison (invert_tree_comparison (code, 0),
       type, op0, op1);
 if (tem)
   return invert_truthvalue (tem);
 return NULL_TREE;
      }

    case 132:
      return
 fold_build2 (TRUTH_ORIF_EXPR, type,
       optimize_minmax_comparison
       (133, type, arg0, comp_const),
       optimize_minmax_comparison
       (131, type, arg0, comp_const));

    case 133:
      if (op_code == MAX_EXPR && consts_equal)

 return fold_build2 (130, type, inner, comp_const);

      else if (op_code == MAX_EXPR && consts_lt)

 return fold_build2 (133, type, inner, comp_const);

      else if (op_code == MAX_EXPR)

 return omit_one_operand (type, integer_zero_node, inner);

      else if (consts_equal)

 return fold_build2 (132, type, inner, comp_const);

      else if (consts_lt)

 return omit_one_operand (type, integer_zero_node, inner);

      else

 return fold_build2 (133, type, inner, comp_const);

    case 131:
      if (op_code == MAX_EXPR && (consts_equal || consts_lt))


 return fold_build2 (131, type, inner, comp_const);

      else if (op_code == MAX_EXPR)

 return omit_one_operand (type, integer_one_node, inner);

      else if (op_code == MIN_EXPR && (consts_equal || consts_lt))


 return omit_one_operand (type, integer_zero_node, inner);

      else

 return fold_build2 (131, type, inner, comp_const);

    default:
      return NULL_TREE;
    }
}
