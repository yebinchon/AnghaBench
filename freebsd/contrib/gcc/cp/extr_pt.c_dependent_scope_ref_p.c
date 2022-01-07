
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_P (int ) ;
 scalar_t__ SCOPE_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TYPE_P (int ) ;
 scalar_t__ currently_open_class (int ) ;
 scalar_t__ dependent_type_p (int ) ;
 int gcc_assert (int) ;

__attribute__((used)) static bool
dependent_scope_ref_p (tree expression, bool criterion (tree))
{
  tree scope;
  tree name;

  gcc_assert (TREE_CODE (expression) == SCOPE_REF);

  if (!TYPE_P (TREE_OPERAND (expression, 0)))
    return 1;

  scope = TREE_OPERAND (expression, 0);
  name = TREE_OPERAND (expression, 1);
  if (DECL_P (name)
      && currently_open_class (scope)
      && !criterion (name))
    return 0;
  if (dependent_type_p (scope))
    return 1;

  return 0;
}
