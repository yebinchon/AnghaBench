
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int (* binds_local_p ) (scalar_t__) ;} ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ARRAY_REF ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ DECL_SIZE_UNIT (scalar_t__) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ STRING_CST ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_READONLY (scalar_t__) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 int TREE_STRING_LENGTH (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ compare_tree_int (scalar_t__,int) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 int host_integerp (scalar_t__,int) ;
 scalar_t__ size_zero_node ;
 int sizetype ;
 int stub1 (scalar_t__) ;
 TYPE_1__ targetm ;

tree
string_constant (tree arg, tree *ptr_offset)
{
  tree array, offset;
  STRIP_NOPS (arg);

  if (TREE_CODE (arg) == ADDR_EXPR)
    {
      if (TREE_CODE (TREE_OPERAND (arg, 0)) == STRING_CST)
 {
   *ptr_offset = size_zero_node;
   return TREE_OPERAND (arg, 0);
 }
      else if (TREE_CODE (TREE_OPERAND (arg, 0)) == VAR_DECL)
 {
   array = TREE_OPERAND (arg, 0);
   offset = size_zero_node;
 }
      else if (TREE_CODE (TREE_OPERAND (arg, 0)) == ARRAY_REF)
 {
   array = TREE_OPERAND (TREE_OPERAND (arg, 0), 0);
   offset = TREE_OPERAND (TREE_OPERAND (arg, 0), 1);
   if (TREE_CODE (array) != STRING_CST
       && TREE_CODE (array) != VAR_DECL)
     return 0;
 }
      else
 return 0;
    }
  else if (TREE_CODE (arg) == PLUS_EXPR)
    {
      tree arg0 = TREE_OPERAND (arg, 0);
      tree arg1 = TREE_OPERAND (arg, 1);

      STRIP_NOPS (arg0);
      STRIP_NOPS (arg1);

      if (TREE_CODE (arg0) == ADDR_EXPR
   && (TREE_CODE (TREE_OPERAND (arg0, 0)) == STRING_CST
       || TREE_CODE (TREE_OPERAND (arg0, 0)) == VAR_DECL))
 {
   array = TREE_OPERAND (arg0, 0);
   offset = arg1;
 }
      else if (TREE_CODE (arg1) == ADDR_EXPR
        && (TREE_CODE (TREE_OPERAND (arg1, 0)) == STRING_CST
     || TREE_CODE (TREE_OPERAND (arg1, 0)) == VAR_DECL))
 {
   array = TREE_OPERAND (arg1, 0);
   offset = arg0;
 }
      else
 return 0;
    }
  else
    return 0;

  if (TREE_CODE (array) == STRING_CST)
    {
      *ptr_offset = fold_convert (sizetype, offset);
      return array;
    }
  else if (TREE_CODE (array) == VAR_DECL)
    {
      int length;


      if (DECL_INITIAL (array) == NULL_TREE
   || TREE_CODE (DECL_INITIAL (array)) != STRING_CST)
 return 0;


      if (! TREE_READONLY (array)
   || TREE_SIDE_EFFECTS (array)
   || ! targetm.binds_local_p (array))
 return 0;


      if (DECL_SIZE_UNIT (array) == NULL_TREE
   || TREE_CODE (DECL_SIZE_UNIT (array)) != INTEGER_CST
   || (length = TREE_STRING_LENGTH (DECL_INITIAL (array))) <= 0
   || compare_tree_int (DECL_SIZE_UNIT (array), length) < 0)
 return 0;



      offset = fold_convert (sizetype, offset);
      if (compare_tree_int (DECL_SIZE_UNIT (array), length) > 0
   && (! host_integerp (offset, 1)
       || compare_tree_int (offset, length) >= 0))
 return 0;

      *ptr_offset = offset;
      return DECL_INITIAL (array);
    }

  return 0;
}
