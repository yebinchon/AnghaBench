
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION (int ) ;
 int DECL_INITIAL (int ) ;
 scalar_t__ DECL_IN_AGGR_P (int ) ;
 scalar_t__ DECL_TEMPLATE_INSTANTIATION (int ) ;
 int DECL_TEMPLATE_RESULT (int ) ;
 int DECL_TI_TEMPLATE (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int gcc_assert (int) ;

tree
template_for_substitution (tree decl)
{
  tree tmpl = DECL_TI_TEMPLATE (decl);
  while (

  DECL_TEMPLATE_INSTANTIATION (tmpl)
   || (TREE_CODE (decl) == FUNCTION_DECL
       && DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION (tmpl)
       && !DECL_INITIAL (DECL_TEMPLATE_RESULT (tmpl))))
    {





      gcc_assert (TREE_CODE (decl) != VAR_DECL
    || DECL_IN_AGGR_P (DECL_TEMPLATE_RESULT (tmpl)));


      tmpl = DECL_TI_TEMPLATE (tmpl);
    }

  return tmpl;
}
