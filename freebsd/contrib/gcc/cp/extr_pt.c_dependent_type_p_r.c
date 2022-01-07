
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ CLASSTYPE_TEMPLATE_INFO (scalar_t__) ;
 int CLASSTYPE_TI_ARGS (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ FUNCTION_TYPE ;
 int INNERMOST_TEMPLATE_ARGS (int ) ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPENAME_TYPE ;
 scalar_t__ TYPEOF_TYPE ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_CLASS_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_POINTED_TO_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTR_TO_MEMBER_P (scalar_t__) ;
 scalar_t__ any_dependent_template_arguments_p (int ) ;
 int dependent_type_p (scalar_t__) ;
 int type_dependent_expression_p (scalar_t__) ;
 scalar_t__ value_dependent_expression_p (scalar_t__) ;

__attribute__((used)) static bool
dependent_type_p_r (tree type)
{
  tree scope;
  if (TREE_CODE (type) == TEMPLATE_TYPE_PARM
      || TREE_CODE (type) == TEMPLATE_TEMPLATE_PARM)
    return 1;



  if (TREE_CODE (type) == TYPENAME_TYPE)
    return 1;


  type = TYPE_MAIN_VARIANT (type);

  if (TYPE_PTR_TO_MEMBER_P (type))
    return (dependent_type_p (TYPE_PTRMEM_CLASS_TYPE (type))
     || dependent_type_p (TYPE_PTRMEM_POINTED_TO_TYPE
        (type)));
  else if (TREE_CODE (type) == POINTER_TYPE
    || TREE_CODE (type) == REFERENCE_TYPE)
    return dependent_type_p (TREE_TYPE (type));
  else if (TREE_CODE (type) == FUNCTION_TYPE
    || TREE_CODE (type) == METHOD_TYPE)
    {
      tree arg_type;

      if (dependent_type_p (TREE_TYPE (type)))
 return 1;
      for (arg_type = TYPE_ARG_TYPES (type);
    arg_type;
    arg_type = TREE_CHAIN (arg_type))
 if (dependent_type_p (TREE_VALUE (arg_type)))
   return 1;
      return 0;
    }



  if (TREE_CODE (type) == ARRAY_TYPE)
    {
      if (TYPE_DOMAIN (type)
   && ((value_dependent_expression_p
        (TYPE_MAX_VALUE (TYPE_DOMAIN (type))))
       || (type_dependent_expression_p
    (TYPE_MAX_VALUE (TYPE_DOMAIN (type))))))
 return 1;
      return dependent_type_p (TREE_TYPE (type));
    }



  if (TREE_CODE (type) == BOUND_TEMPLATE_TEMPLATE_PARM)
    return 1;


  else if (CLASS_TYPE_P (type) && CLASSTYPE_TEMPLATE_INFO (type)
    && (any_dependent_template_arguments_p
        (INNERMOST_TEMPLATE_ARGS (CLASSTYPE_TI_ARGS (type)))))
    return 1;




  if (TREE_CODE (type) == TYPEOF_TYPE)
    return 1;
  scope = TYPE_CONTEXT (type);
  if (scope && TYPE_P (scope))
    return dependent_type_p (scope);
  else if (scope && TREE_CODE (scope) == FUNCTION_DECL)
    return type_dependent_expression_p (scope);


  return 0;
}
