
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int DECL_IGNORED_P ;


 int DECL_TEMPLATE_RESULT (int ) ;
 scalar_t__ DECL_VIRTUAL_P (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ IS_AGGR_TYPE (int ) ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_DECL ;
 int current_function_decl ;
 int error (char*,int ) ;
 int gcc_assert (int) ;

void
check_member_template (tree tmpl)
{
  tree decl;

  gcc_assert (TREE_CODE (tmpl) == TEMPLATE_DECL);
  decl = DECL_TEMPLATE_RESULT (tmpl);

  if (TREE_CODE (decl) == FUNCTION_DECL
      || (TREE_CODE (decl) == TYPE_DECL
   && IS_AGGR_TYPE (TREE_TYPE (decl))))
    {

      gcc_assert (!current_function_decl);

      gcc_assert (!(TREE_CODE (decl) == FUNCTION_DECL
      && DECL_VIRTUAL_P (decl)));



      DECL_IGNORED_P (tmpl) = 1;
    }
  else
    error ("template declaration of %q#D", decl);
}
