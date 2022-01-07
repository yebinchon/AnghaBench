
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ CLASSTYPE_USE_TEMPLATE (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ DECL_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 int gcc_assert (int) ;
 scalar_t__ same_type_ignoring_top_level_qualifiers_p (scalar_t__,scalar_t__) ;

int
is_specialization_of (tree decl, tree tmpl)
{
  tree t;

  if (TREE_CODE (decl) == FUNCTION_DECL)
    {
      for (t = decl;
    t != NULL_TREE;
    t = DECL_TEMPLATE_INFO (t) ? DECL_TI_TEMPLATE (t) : NULL_TREE)
 if (t == tmpl)
   return 1;
    }
  else
    {
      gcc_assert (TREE_CODE (decl) == TYPE_DECL);

      for (t = TREE_TYPE (decl);
    t != NULL_TREE;
    t = CLASSTYPE_USE_TEMPLATE (t)
      ? TREE_TYPE (CLASSTYPE_TI_TEMPLATE (t)) : NULL_TREE)
 if (same_type_ignoring_top_level_qualifiers_p (t, TREE_TYPE (tmpl)))
   return 1;
    }

  return 0;
}
