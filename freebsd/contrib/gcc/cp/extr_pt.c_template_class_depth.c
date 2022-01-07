
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_INFO (scalar_t__) ;
 int CLASSTYPE_TI_ARGS (scalar_t__) ;
 int CLASSTYPE_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ CP_DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INFO (scalar_t__) ;
 int DECL_TI_ARGS (scalar_t__) ;
 int DECL_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ PRIMARY_TEMPLATE_P (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ uses_template_parms (int ) ;

int
template_class_depth (tree type)
{
  int depth;

  for (depth = 0;
       type && TREE_CODE (type) != NAMESPACE_DECL;
       type = (TREE_CODE (type) == FUNCTION_DECL)
  ? CP_DECL_CONTEXT (type) : TYPE_CONTEXT (type))
    {
      if (TREE_CODE (type) != FUNCTION_DECL)
 {
   if (CLASSTYPE_TEMPLATE_INFO (type)
       && PRIMARY_TEMPLATE_P (CLASSTYPE_TI_TEMPLATE (type))
       && uses_template_parms (CLASSTYPE_TI_ARGS (type)))
     ++depth;
 }
      else
 {
   if (DECL_TEMPLATE_INFO (type)
       && PRIMARY_TEMPLATE_P (DECL_TI_TEMPLATE (type))
       && uses_template_parms (DECL_TI_ARGS (type)))
     ++depth;
 }
    }

  return depth;
}
