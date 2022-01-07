
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_SPECIALIZATION (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (int ) ;
 int DECL_NAMESPACE_SCOPE_P (int ) ;
 scalar_t__ DECL_TEMPLATE_INFO (int ) ;
 int DECL_TI_TEMPLATE (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int NULL_TREE ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_TYPE (int ) ;

tree
most_general_template (tree decl)
{


  if (TREE_CODE (decl) == FUNCTION_DECL)
    {
      if (DECL_TEMPLATE_INFO (decl)) {
 decl = DECL_TI_TEMPLATE (decl);



 if (TREE_CODE (decl) != TEMPLATE_DECL)
   return NULL_TREE;
      } else
 return NULL_TREE;
    }


  while (DECL_TEMPLATE_INFO (decl))
    {


      if (TREE_CODE (DECL_TI_TEMPLATE (decl)) != TEMPLATE_DECL)
 break;

      if (CLASS_TYPE_P (TREE_TYPE (decl))
   && CLASSTYPE_TEMPLATE_SPECIALIZATION (TREE_TYPE (decl)))
 break;


      if (!DECL_NAMESPACE_SCOPE_P (decl)
   && DECL_CONTEXT (decl)
   && CLASSTYPE_TEMPLATE_SPECIALIZATION (DECL_CONTEXT (decl)))
 break;

      decl = DECL_TI_TEMPLATE (decl);
    }

  return decl;
}
