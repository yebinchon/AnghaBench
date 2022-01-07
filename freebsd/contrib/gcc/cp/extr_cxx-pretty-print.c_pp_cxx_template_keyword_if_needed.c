
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_P (int ) ;
 scalar_t__ dependent_type_p (int ) ;
 int pp_cxx_identifier (int *,char*) ;

__attribute__((used)) static inline void
pp_cxx_template_keyword_if_needed (cxx_pretty_printer *pp, tree scope, tree t)
{
  if (TREE_CODE (t) == TEMPLATE_ID_EXPR
      && TYPE_P (scope) && dependent_type_p (scope))
    pp_cxx_identifier (pp, "template");
}
