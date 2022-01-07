
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int INDIRECT_REF ;
 int NEGATE_EXPR ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build1 (int ,int ,int ) ;
 int build_pointer_type_for_mode (int ,int ,int) ;
 int build_type_variant (int ,int,int ) ;
 char* c_getstr (int ) ;
 int fold_build1 (int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int integer_minus_one_node ;
 int integer_one_node ;
 int integer_type_node ;
 int integer_zero_node ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 int ptr_mode ;
 int strcmp (char const*,char const*) ;
 int unsigned_char_type_node ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strcmp (tree arglist)
{
  tree arg1, arg2;
  const char *p1, *p2;

  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;

  arg1 = TREE_VALUE (arglist);
  arg2 = TREE_VALUE (TREE_CHAIN (arglist));


  if (operand_equal_p (arg1, arg2, 0))
    return integer_zero_node;

  p1 = c_getstr (arg1);
  p2 = c_getstr (arg2);

  if (p1 && p2)
    {
      const int i = strcmp (p1, p2);
      if (i < 0)
 return integer_minus_one_node;
      else if (i > 0)
 return integer_one_node;
      else
 return integer_zero_node;
    }


  if (p2 && *p2 == '\0')
    {
      tree cst_uchar_node = build_type_variant (unsigned_char_type_node, 1, 0);
      tree cst_uchar_ptr_node
 = build_pointer_type_for_mode (cst_uchar_node, ptr_mode, 1);

      return fold_convert (integer_type_node,
      build1 (INDIRECT_REF, cst_uchar_node,
       fold_convert (cst_uchar_ptr_node,
       arg1)));
    }


  if (p1 && *p1 == '\0')
    {
      tree cst_uchar_node = build_type_variant (unsigned_char_type_node, 1, 0);
      tree cst_uchar_ptr_node
 = build_pointer_type_for_mode (cst_uchar_node, ptr_mode, 1);

      tree temp = fold_convert (integer_type_node,
    build1 (INDIRECT_REF, cst_uchar_node,
     fold_convert (cst_uchar_ptr_node,
            arg2)));
      return fold_build1 (NEGATE_EXPR, integer_type_node, temp);
    }

  return 0;
}
