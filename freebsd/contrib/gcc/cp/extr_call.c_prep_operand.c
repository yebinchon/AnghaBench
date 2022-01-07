
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_INSTANTIATION (int ) ;
 scalar_t__ CLASS_TYPE_P (int ) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int instantiate_class_template (int ) ;

__attribute__((used)) static tree
prep_operand (tree operand)
{
  if (operand)
    {
      if (CLASS_TYPE_P (TREE_TYPE (operand))
   && CLASSTYPE_TEMPLATE_INSTANTIATION (TREE_TYPE (operand)))

 instantiate_class_template (TYPE_MAIN_VARIANT (TREE_TYPE (operand)));
    }

  return operand;
}
