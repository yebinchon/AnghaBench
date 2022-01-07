
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BASELINK_FUNCTIONS (int ) ;
 scalar_t__ BASELINK_P (int ) ;
 scalar_t__ COMPONENT_REF ;
 int OVL_CURRENT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int gcc_assert (int ) ;
 int is_overloaded_fn (int ) ;

tree
get_first_fn (tree from)
{
  gcc_assert (is_overloaded_fn (from));

  if (TREE_CODE (from) == COMPONENT_REF)
    from = TREE_OPERAND (from, 1);
  if (BASELINK_P (from))
    from = BASELINK_FUNCTIONS (from);
  return OVL_CURRENT (from);
}
