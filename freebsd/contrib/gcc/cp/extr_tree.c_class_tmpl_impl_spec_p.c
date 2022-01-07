
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_INSTANTIATION (int ) ;
 scalar_t__ CLASS_TYPE_P (int ) ;

bool
class_tmpl_impl_spec_p (tree t)
{
  return CLASS_TYPE_P (t) && CLASSTYPE_TEMPLATE_INSTANTIATION (t);
}
