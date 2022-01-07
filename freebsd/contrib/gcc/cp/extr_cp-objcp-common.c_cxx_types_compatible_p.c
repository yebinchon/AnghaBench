
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ POINTER_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MODE (int ) ;
 scalar_t__ TYPE_REF_CAN_ALIAS_ALL (int ) ;
 scalar_t__ same_type_ignoring_top_level_qualifiers_p (int ,int ) ;
 scalar_t__ same_type_p (int ,int ) ;

int
cxx_types_compatible_p (tree x, tree y)
{
  if (same_type_ignoring_top_level_qualifiers_p (x, y))
    return 1;




  if (POINTER_TYPE_P (x) && POINTER_TYPE_P (y)
      && TYPE_MODE (x) == TYPE_MODE (y)
      && TYPE_REF_CAN_ALIAS_ALL (x) == TYPE_REF_CAN_ALIAS_ALL (y)
      && same_type_p (TREE_TYPE (x), TREE_TYPE (y)))
    return 1;

  return 0;
}
