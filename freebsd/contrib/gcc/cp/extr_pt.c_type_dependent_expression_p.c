
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ALIGNOF_EXPR ;
 scalar_t__ BASELINK ;
 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ CAST_EXPR ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ CONST_CAST_EXPR ;
 scalar_t__ DECL_LANG_SPECIFIC (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INFO (scalar_t__) ;
 int DECL_TEMPLATE_TEMPLATE_PARM_P (scalar_t__) ;
 int DECL_TI_ARGS (scalar_t__) ;
 scalar_t__ DELETE_EXPR ;
 scalar_t__ DYNAMIC_CAST_EXPR ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ INNERMOST_TEMPLATE_ARGS (int ) ;
 scalar_t__ NEW_EXPR ;
 scalar_t__ OFFSET_REF ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ PSEUDO_DTOR_EXPR ;
 scalar_t__ REINTERPRET_CAST_EXPR ;
 scalar_t__ SCOPE_REF ;
 scalar_t__ SIZEOF_EXPR ;
 scalar_t__ STATIC_CAST_EXPR ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ THROW_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPEID_EXPR ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ USING_DECL ;
 scalar_t__ VEC_DELETE_EXPR ;
 scalar_t__ VEC_NEW_EXPR ;
 scalar_t__ any_dependent_template_arguments_p (scalar_t__) ;
 scalar_t__ dependent_scope_ref_p (scalar_t__,int (*) (scalar_t__)) ;
 int dependent_type_p (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int processing_template_decl ;
 scalar_t__ unknown_type_node ;
 scalar_t__ value_dependent_expression_p (scalar_t__) ;

bool
type_dependent_expression_p (tree expression)
{
  if (!processing_template_decl)
    return 0;

  if (expression == error_mark_node)
    return 0;


  if (TREE_CODE (expression) == IDENTIFIER_NODE
      || TREE_CODE (expression) == USING_DECL)
    return 1;


  if (TREE_CODE (expression) == PSEUDO_DTOR_EXPR
      || TREE_CODE (expression) == SIZEOF_EXPR
      || TREE_CODE (expression) == ALIGNOF_EXPR
      || TREE_CODE (expression) == TYPEID_EXPR
      || TREE_CODE (expression) == DELETE_EXPR
      || TREE_CODE (expression) == VEC_DELETE_EXPR
      || TREE_CODE (expression) == THROW_EXPR)
    return 0;



  if (TREE_CODE (expression) == DYNAMIC_CAST_EXPR
      || TREE_CODE (expression) == STATIC_CAST_EXPR
      || TREE_CODE (expression) == CONST_CAST_EXPR
      || TREE_CODE (expression) == REINTERPRET_CAST_EXPR
      || TREE_CODE (expression) == CAST_EXPR)
    return dependent_type_p (TREE_TYPE (expression));



  if (TREE_CODE (expression) == NEW_EXPR
      || TREE_CODE (expression) == VEC_NEW_EXPR)
    {



      tree type = TREE_OPERAND (expression, 1);
      if (TREE_CODE (type) == TREE_LIST)


 return dependent_type_p (TREE_VALUE (TREE_PURPOSE (type)))
        || value_dependent_expression_p
      (TREE_OPERAND (TREE_VALUE (type), 1));
      else
 return dependent_type_p (type);
    }

  if (TREE_CODE (expression) == SCOPE_REF
      && dependent_scope_ref_p (expression,
    type_dependent_expression_p))
    return 1;

  if (TREE_CODE (expression) == FUNCTION_DECL
      && DECL_LANG_SPECIFIC (expression)
      && DECL_TEMPLATE_INFO (expression)
      && (any_dependent_template_arguments_p
   (INNERMOST_TEMPLATE_ARGS (DECL_TI_ARGS (expression)))))
    return 1;

  if (TREE_CODE (expression) == TEMPLATE_DECL
      && !DECL_TEMPLATE_TEMPLATE_PARM_P (expression))
    return 0;

  if (TREE_TYPE (expression) == unknown_type_node)
    {
      if (TREE_CODE (expression) == ADDR_EXPR)
 return type_dependent_expression_p (TREE_OPERAND (expression, 0));
      if (TREE_CODE (expression) == COMPONENT_REF
   || TREE_CODE (expression) == OFFSET_REF)
 {
   if (type_dependent_expression_p (TREE_OPERAND (expression, 0)))
     return 1;
   expression = TREE_OPERAND (expression, 1);
   if (TREE_CODE (expression) == IDENTIFIER_NODE)
     return 0;
 }

      if (TREE_CODE (expression) == SCOPE_REF)
 return 0;

      if (TREE_CODE (expression) == BASELINK)
 expression = BASELINK_FUNCTIONS (expression);

      if (TREE_CODE (expression) == TEMPLATE_ID_EXPR)
 {
   if (any_dependent_template_arguments_p
       (TREE_OPERAND (expression, 1)))
     return 1;
   expression = TREE_OPERAND (expression, 0);
 }
      gcc_assert (TREE_CODE (expression) == OVERLOAD
    || TREE_CODE (expression) == FUNCTION_DECL);

      while (expression)
 {
   if (type_dependent_expression_p (OVL_CURRENT (expression)))
     return 1;
   expression = OVL_NEXT (expression);
 }
      return 0;
    }

  gcc_assert (TREE_CODE (expression) != TYPE_DECL);

  return (dependent_type_p (TREE_TYPE (expression)));
}
