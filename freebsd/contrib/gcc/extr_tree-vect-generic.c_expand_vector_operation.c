
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int block_stmt_iterator ;






 scalar_t__ GET_MODE_CLASS (int) ;

 scalar_t__ MODE_VECTOR_FLOAT ;
 scalar_t__ MODE_VECTOR_INT ;

 int NULL_TREE ;

 scalar_t__ TREE_CODE_CLASS (int) ;
 int TREE_OPERAND (int ,int) ;
 int TYPE_MODE (int ) ;
 int TYPE_OVERFLOW_TRAPS (int ) ;
 int do_binop ;
 int do_negate ;
 int do_plus_minus ;
 int do_unop ;
 int expand_vector_addition (int *,int ,int ,int ,int ,int ,int) ;
 int expand_vector_parallel (int *,int ,int ,int ,int ,int) ;
 int expand_vector_piecewise (int *,int ,int ,int ,int ,int ,int) ;
 scalar_t__ tcc_unary ;

__attribute__((used)) static tree
expand_vector_operation (block_stmt_iterator *bsi, tree type, tree compute_type,
    tree rhs, enum tree_code code)
{
  enum machine_mode compute_mode = TYPE_MODE (compute_type);




  if (GET_MODE_CLASS (compute_mode) != MODE_VECTOR_INT
      && GET_MODE_CLASS (compute_mode) != MODE_VECTOR_FLOAT)
    switch (code)
      {
      case 128:
      case 130:
        if (!TYPE_OVERFLOW_TRAPS (type))
          return expand_vector_addition (bsi, do_binop, do_plus_minus, type,
                   TREE_OPERAND (rhs, 0),
      TREE_OPERAND (rhs, 1), code);
 break;

      case 129:
        if (!TYPE_OVERFLOW_TRAPS (type))
          return expand_vector_addition (bsi, do_unop, do_negate, type,
                   TREE_OPERAND (rhs, 0),
      NULL_TREE, code);
 break;

      case 134:
      case 133:
      case 131:
        return expand_vector_parallel (bsi, do_binop, type,
                 TREE_OPERAND (rhs, 0),
           TREE_OPERAND (rhs, 1), code);

      case 132:
        return expand_vector_parallel (bsi, do_unop, type,
                 TREE_OPERAND (rhs, 0),
           NULL_TREE, code);

      default:
 break;
      }

  if (TREE_CODE_CLASS (code) == tcc_unary)
    return expand_vector_piecewise (bsi, do_unop, type, compute_type,
        TREE_OPERAND (rhs, 0),
        NULL_TREE, code);
  else
    return expand_vector_piecewise (bsi, do_binop, type, compute_type,
        TREE_OPERAND (rhs, 0),
        TREE_OPERAND (rhs, 1), code);
}
