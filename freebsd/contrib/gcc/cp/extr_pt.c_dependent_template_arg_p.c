
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_P (int ) ;
 int dependent_template_p (int ) ;
 int dependent_type_p (int ) ;
 int processing_template_decl ;
 scalar_t__ type_dependent_expression_p (int ) ;
 scalar_t__ value_dependent_expression_p (int ) ;

__attribute__((used)) static bool
dependent_template_arg_p (tree arg)
{
  if (!processing_template_decl)
    return 0;

  if (TREE_CODE (arg) == TEMPLATE_DECL
      || TREE_CODE (arg) == TEMPLATE_TEMPLATE_PARM)
    return dependent_template_p (arg);
  else if (TYPE_P (arg))
    return dependent_type_p (arg);
  else
    return (type_dependent_expression_p (arg)
     || value_dependent_expression_p (arg));
}
