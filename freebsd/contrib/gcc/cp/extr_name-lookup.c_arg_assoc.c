
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct arg_lookup {int dummy; } ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ BASELINK ;
 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ CP_DECL_CONTEXT (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ OFFSET_REF ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_CHAIN (scalar_t__) ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_FUNCTION (scalar_t__) ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 int arg_assoc_class (struct arg_lookup*,scalar_t__) ;
 int arg_assoc_namespace (struct arg_lookup*,scalar_t__) ;
 int arg_assoc_template_arg (struct arg_lookup*,int ) ;
 int arg_assoc_type (struct arg_lookup*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int type_unknown_p (scalar_t__) ;

__attribute__((used)) static bool
arg_assoc (struct arg_lookup *k, tree n)
{
  if (n == error_mark_node)
    return 0;

  if (TYPE_P (n))
    return arg_assoc_type (k, n);

  if (! type_unknown_p (n))
    return arg_assoc_type (k, TREE_TYPE (n));

  if (TREE_CODE (n) == ADDR_EXPR)
    n = TREE_OPERAND (n, 0);
  if (TREE_CODE (n) == COMPONENT_REF)
    n = TREE_OPERAND (n, 1);
  if (TREE_CODE (n) == OFFSET_REF)
    n = TREE_OPERAND (n, 1);
  while (TREE_CODE (n) == TREE_LIST)
    n = TREE_VALUE (n);
  if (TREE_CODE (n) == BASELINK)
    n = BASELINK_FUNCTIONS (n);

  if (TREE_CODE (n) == FUNCTION_DECL)
    return arg_assoc_type (k, TREE_TYPE (n));
  if (TREE_CODE (n) == TEMPLATE_ID_EXPR)
    {





      tree template = TREE_OPERAND (n, 0);
      tree args = TREE_OPERAND (n, 1);
      tree ctx;
      int ix;

      if (TREE_CODE (template) == COMPONENT_REF)
 template = TREE_OPERAND (template, 1);





      template = OVL_CURRENT (template);

      ctx = CP_DECL_CONTEXT (template);

      if (TREE_CODE (ctx) == NAMESPACE_DECL)
 {
   if (arg_assoc_namespace (k, ctx) == 1)
     return 1;
 }

      else if (arg_assoc_class (k, ctx) == 1)
 return 1;


      if (args)
 for (ix = TREE_VEC_LENGTH (args); ix--;)
   if (arg_assoc_template_arg (k, TREE_VEC_ELT (args, ix)) == 1)
     return 1;
    }
  else if (TREE_CODE (n) == OVERLOAD)
    {
      for (; n; n = OVL_CHAIN (n))
 if (arg_assoc_type (k, TREE_TYPE (OVL_FUNCTION (n))))
   return 1;
    }

  return 0;
}
