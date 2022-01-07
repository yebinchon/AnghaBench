
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int cxx_pretty_printer ;


 int const BOUND_TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ TEMPLATE_PARM_IDX (int ) ;
 scalar_t__ TEMPLATE_PARM_LEVEL (int ) ;
 int const TEMPLATE_TEMPLATE_PARM ;
 int const TEMPLATE_TYPE_PARM ;
 int TEMPLATE_TYPE_PARM_INDEX (int ) ;
 int TREE_CODE (int ) ;
 int pp_cxx_begin_template_argument_list (int *) ;
 int pp_cxx_end_template_argument_list (int *) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_minus (int *) ;
 int pp_wide_integer (int *,scalar_t__) ;

void
pp_cxx_canonical_template_parameter (cxx_pretty_printer *pp, tree parm)
{
  const enum tree_code code = TREE_CODE (parm);


  if (code == TEMPLATE_TYPE_PARM || code == TEMPLATE_TEMPLATE_PARM
      || code == BOUND_TEMPLATE_TEMPLATE_PARM)
    parm = TEMPLATE_TYPE_PARM_INDEX (parm);

  pp_cxx_begin_template_argument_list (pp);
  pp_cxx_identifier (pp, "template-parameter-");
  pp_wide_integer (pp, TEMPLATE_PARM_LEVEL (parm));
  pp_minus (pp);
  pp_wide_integer (pp, TEMPLATE_PARM_IDX (parm) + 1);
  pp_cxx_end_template_argument_list (pp);
}
