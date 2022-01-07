
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_BEFRIENDING_CLASSES (scalar_t__) ;
 scalar_t__ DECL_BEFRIENDING_CLASSES (scalar_t__) ;
 scalar_t__ DECL_CLASS_SCOPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_FUNCTION_TEMPLATE_P (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ DECL_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 int processing_template_decl ;
 scalar_t__ protected_accessible_p (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
friend_accessible_p (tree scope, tree decl, tree binfo)
{
  tree befriending_classes;
  tree t;

  if (!scope)
    return 0;

  if (TREE_CODE (scope) == FUNCTION_DECL
      || DECL_FUNCTION_TEMPLATE_P (scope))
    befriending_classes = DECL_BEFRIENDING_CLASSES (scope);
  else if (TYPE_P (scope))
    befriending_classes = CLASSTYPE_BEFRIENDING_CLASSES (scope);
  else
    return 0;

  for (t = befriending_classes; t; t = TREE_CHAIN (t))
    if (protected_accessible_p (decl, TREE_VALUE (t), binfo))
      return 1;



  if (TYPE_P (scope))
    for (t = TYPE_CONTEXT (scope); t && TYPE_P (t); t = TYPE_CONTEXT (t))
      if (protected_accessible_p (decl, t, binfo))
 return 1;

  if (TREE_CODE (scope) == FUNCTION_DECL
      || DECL_FUNCTION_TEMPLATE_P (scope))
    {


      if (DECL_CLASS_SCOPE_P (scope)
   && friend_accessible_p (DECL_CONTEXT (scope), decl, binfo))
 return 1;


      if (DECL_TEMPLATE_INFO (scope))
 {
   int ret;


   ++processing_template_decl;
   ret = friend_accessible_p (DECL_TI_TEMPLATE (scope), decl, binfo);
   --processing_template_decl;
   return ret;
 }
    }

  return 0;
}
