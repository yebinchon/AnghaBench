
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
typedef int cxx_pretty_printer ;
struct TYPE_2__ {int flags; } ;


 int * FUNCTION_FIRST_USER_PARM (int *) ;
 int * FUNCTION_FIRST_USER_PARMTYPE (int *) ;
 scalar_t__ METHOD_TYPE ;
 int * TREE_CHAIN (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int TREE_PURPOSE (int *) ;
 int * TREE_VALUE (int *) ;
 int * TYPE_ARG_TYPES (int *) ;
 scalar_t__ TYPE_P (int *) ;
 TYPE_1__* pp_c_base (int *) ;
 int pp_c_flag_abstract ;
 int pp_cxx_assignment_expression (int *,int ) ;
 int pp_cxx_flag_default_argument ;
 int pp_cxx_left_paren (int *) ;
 int pp_cxx_parameter_declaration (int *,int *) ;
 int pp_cxx_right_paren (int *) ;
 int pp_cxx_separate_with (int *,char) ;
 int pp_cxx_whitespace (int *) ;
 int pp_equal (int *) ;

__attribute__((used)) static void
pp_cxx_parameter_declaration_clause (cxx_pretty_printer *pp, tree t)
{
  tree args = TYPE_P (t) ? ((void*)0) : FUNCTION_FIRST_USER_PARM (t);
  tree types =
    TYPE_P (t) ? TYPE_ARG_TYPES (t) : FUNCTION_FIRST_USER_PARMTYPE (t);
  const bool abstract = args == ((void*)0)
    || pp_c_base (pp)->flags & pp_c_flag_abstract;
  bool first = 1;


  if (TREE_CODE (t) == METHOD_TYPE)
    types = TREE_CHAIN (types);

  pp_cxx_left_paren (pp);
  for (; args; args = TREE_CHAIN (args), types = TREE_CHAIN (types))
    {
      if (!first)
 pp_cxx_separate_with (pp, ',');
      first = 0;
      pp_cxx_parameter_declaration (pp, abstract ? TREE_VALUE (types) : args);
      if (!abstract && pp_c_base (pp)->flags & pp_cxx_flag_default_argument)
 {
   pp_cxx_whitespace (pp);
   pp_equal (pp);
   pp_cxx_whitespace (pp);
   pp_cxx_assignment_expression (pp, TREE_PURPOSE (types));
 }
    }
  pp_cxx_right_paren (pp);
}
