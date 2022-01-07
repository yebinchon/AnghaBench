
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ any_dependent_template_arguments_p (int ) ;
 scalar_t__ dependent_template_p (int ) ;

bool
dependent_template_id_p (tree tmpl, tree args)
{
  return (dependent_template_p (tmpl)
   || any_dependent_template_arguments_p (args));
}
