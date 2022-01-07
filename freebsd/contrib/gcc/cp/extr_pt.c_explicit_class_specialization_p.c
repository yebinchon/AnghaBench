
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CLASSTYPE_TEMPLATE_SPECIALIZATION (int ) ;
 int CLASSTYPE_TI_ARGS (int ) ;
 int uses_template_parms (int ) ;

bool
explicit_class_specialization_p (tree type)
{
  if (!CLASSTYPE_TEMPLATE_SPECIALIZATION (type))
    return 0;
  return !uses_template_parms (CLASSTYPE_TI_ARGS (type));
}
