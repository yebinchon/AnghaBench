
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CP_DECL_CONTEXT (scalar_t__) ;
 int DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_TEMPLATE_PARM_P (scalar_t__) ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_CHAIN (scalar_t__) ;
 scalar_t__ OVL_FUNCTION (scalar_t__) ;
 scalar_t__ SCOPE_REF ;
 scalar_t__ TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_P (int ) ;
 int dependent_type_p (int ) ;

bool
dependent_template_p (tree tmpl)
{
  if (TREE_CODE (tmpl) == OVERLOAD)
    {
      while (tmpl)
 {
   if (dependent_template_p (OVL_FUNCTION (tmpl)))
     return 1;
   tmpl = OVL_CHAIN (tmpl);
 }
      return 0;
    }


  if (DECL_TEMPLATE_TEMPLATE_PARM_P (tmpl)
      || TREE_CODE (tmpl) == TEMPLATE_TEMPLATE_PARM)
    return 1;

  if (TREE_CODE (tmpl) == SCOPE_REF
      || TREE_CODE (tmpl) == IDENTIFIER_NODE)
    return 1;

  if (TYPE_P (CP_DECL_CONTEXT (tmpl)))
    return dependent_type_p (DECL_CONTEXT (tmpl));
  return 0;
}
