
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ NULL_TREE ;
 int TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO (scalar_t__ const) ;
 scalar_t__ TI_TEMPLATE (int ) ;
 scalar_t__ TREE_CODE (scalar_t__ const) ;
 int add_substitution (scalar_t__) ;
 scalar_t__ find_substitution (scalar_t__) ;
 int write_template_param (scalar_t__ const) ;

__attribute__((used)) static void
write_template_template_param (const tree parm)
{
  tree template = NULL_TREE;




  if (TREE_CODE (parm) == BOUND_TEMPLATE_TEMPLATE_PARM)
    {
      template
 = TI_TEMPLATE (TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO (parm));
      if (find_substitution (template))
 return;
    }



  write_template_param (parm);
  if (template)
    add_substitution (template);
}
