
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ CONVERT_EXPR ;
 int FLOAT_TYPE_P (int *) ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ REAL_CST ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int ) ;
 int TREE_REAL_CST (int *) ;
 int * TREE_TYPE (int *) ;
 int TYPE_MODE (int *) ;
 scalar_t__ TYPE_PRECISION (int *) ;
 int * build_real (int *,int ) ;
 int * double_type_node ;
 scalar_t__ exact_real_truncate (int ,int *) ;
 int * float_type_node ;
 int real_value_truncate (int ,int ) ;

tree
strip_float_extensions (tree exp)
{
  tree sub, expt, subt;





  if (TREE_CODE (exp) == REAL_CST)
    {
      REAL_VALUE_TYPE orig;
      tree type = ((void*)0);

      orig = TREE_REAL_CST (exp);
      if (TYPE_PRECISION (TREE_TYPE (exp)) > TYPE_PRECISION (float_type_node)
   && exact_real_truncate (TYPE_MODE (float_type_node), &orig))
 type = float_type_node;
      else if (TYPE_PRECISION (TREE_TYPE (exp))
        > TYPE_PRECISION (double_type_node)
        && exact_real_truncate (TYPE_MODE (double_type_node), &orig))
 type = double_type_node;
      if (type)
 return build_real (type, real_value_truncate (TYPE_MODE (type), orig));
    }

  if (TREE_CODE (exp) != NOP_EXPR
      && TREE_CODE (exp) != CONVERT_EXPR)
    return exp;

  sub = TREE_OPERAND (exp, 0);
  subt = TREE_TYPE (sub);
  expt = TREE_TYPE (exp);

  if (!FLOAT_TYPE_P (subt))
    return exp;

  if (TYPE_PRECISION (subt) > TYPE_PRECISION (expt))
    return exp;

  return strip_float_extensions (sub);
}
