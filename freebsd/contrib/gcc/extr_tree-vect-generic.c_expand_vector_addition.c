
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int elem_op_func ;
typedef int block_stmt_iterator ;


 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_SIZE_UNIT (int ) ;
 int TYPE_VECTOR_SUBPARTS (int ) ;
 int UNITS_PER_WORD ;
 int expand_vector_parallel (int *,int ,int ,int ,int ,int) ;
 int expand_vector_piecewise (int *,int ,int ,int ,int ,int ,int) ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static tree
expand_vector_addition (block_stmt_iterator *bsi,
   elem_op_func f, elem_op_func f_parallel,
   tree type, tree a, tree b, enum tree_code code)
{
  int parts_per_word = UNITS_PER_WORD
           / tree_low_cst (TYPE_SIZE_UNIT (TREE_TYPE (type)), 1);

  if (INTEGRAL_TYPE_P (TREE_TYPE (type))
      && parts_per_word >= 4
      && TYPE_VECTOR_SUBPARTS (type) >= 4)
    return expand_vector_parallel (bsi, f_parallel,
       type, a, b, code);
  else
    return expand_vector_piecewise (bsi, f,
        type, TREE_TYPE (type),
        a, b, code);
}
