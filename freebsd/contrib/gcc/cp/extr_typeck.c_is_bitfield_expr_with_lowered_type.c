
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;





 int DECL_BIT_FIELD_TYPE (int ) ;
 int DECL_C_BIT_FIELD (int ) ;
 int FIELD_DECL ;

 int NULL_TREE ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int same_type_ignoring_top_level_qualifiers_p (int ,int ) ;

tree
is_bitfield_expr_with_lowered_type (tree exp)
{
  switch (TREE_CODE (exp))
    {
    case 130:
      if (!is_bitfield_expr_with_lowered_type (TREE_OPERAND (exp, 1)))
 return NULL_TREE;
      return is_bitfield_expr_with_lowered_type (TREE_OPERAND (exp, 2));

    case 131:
      return is_bitfield_expr_with_lowered_type (TREE_OPERAND (exp, 1));

    case 129:
    case 128:
      return is_bitfield_expr_with_lowered_type (TREE_OPERAND (exp, 0));

    case 132:
      {
 tree field;

 field = TREE_OPERAND (exp, 1);
 if (TREE_CODE (field) != FIELD_DECL || !DECL_C_BIT_FIELD (field))
   return NULL_TREE;
 if (same_type_ignoring_top_level_qualifiers_p
     (TREE_TYPE (exp), DECL_BIT_FIELD_TYPE (field)))
   return NULL_TREE;
 return DECL_BIT_FIELD_TYPE (field);
      }

    default:
      return NULL_TREE;
    }
}
