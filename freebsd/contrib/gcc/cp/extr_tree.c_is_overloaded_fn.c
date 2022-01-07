
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BASELINK_FUNCTIONS (int ) ;
 scalar_t__ BASELINK_P (int ) ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ DECL_FUNCTION_TEMPLATE_P (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ OFFSET_REF ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_CHAIN (int ) ;
 int OVL_CURRENT (int ) ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;

int
is_overloaded_fn (tree x)
{

  if (TREE_CODE (x) == OFFSET_REF
      || TREE_CODE (x) == COMPONENT_REF)
    x = TREE_OPERAND (x, 1);
  if (BASELINK_P (x))
    x = BASELINK_FUNCTIONS (x);
  if (TREE_CODE (x) == TEMPLATE_ID_EXPR
      || DECL_FUNCTION_TEMPLATE_P (OVL_CURRENT (x))
      || (TREE_CODE (x) == OVERLOAD && OVL_CHAIN (x)))
    return 2;
  return (TREE_CODE (x) == FUNCTION_DECL
    || TREE_CODE (x) == OVERLOAD);
}
