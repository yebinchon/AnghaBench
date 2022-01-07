
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cxx_pretty_printer ;


 scalar_t__ DECL_SAVED_TREE (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_PARMS (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ most_general_template (scalar_t__) ;
 int pp_cxx_begin_template_argument_list (int *) ;
 int pp_cxx_end_template_argument_list (int *) ;
 int pp_cxx_function_definition (int *,scalar_t__) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_simple_declaration (int *,scalar_t__) ;
 int pp_cxx_template_parameter_list (int *,int ) ;
 int pp_maybe_newline_and_indent (int *,int ) ;
 int pp_newline_and_indent (int *,int) ;

__attribute__((used)) static void
pp_cxx_template_declaration (cxx_pretty_printer *pp, tree t)
{
  tree tmpl = most_general_template (t);
  tree level;
  int i = 0;

  pp_maybe_newline_and_indent (pp, 0);
  for (level = DECL_TEMPLATE_PARMS (tmpl); level; level = TREE_CHAIN (level))
    {
      pp_cxx_identifier (pp, "template");
      pp_cxx_begin_template_argument_list (pp);
      pp_cxx_template_parameter_list (pp, TREE_VALUE (level));
      pp_cxx_end_template_argument_list (pp);
      pp_newline_and_indent (pp, 3);
      i += 3;
    }
  if (TREE_CODE (t) == FUNCTION_DECL && DECL_SAVED_TREE (t))
    pp_cxx_function_definition (pp, t);
  else
    pp_cxx_simple_declaration (pp, t);
}
