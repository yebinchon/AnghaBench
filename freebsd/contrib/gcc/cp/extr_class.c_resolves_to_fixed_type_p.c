
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ fixed_type_or_null (scalar_t__,int*,int*) ;
 int same_type_ignoring_top_level_qualifiers_p (scalar_t__,scalar_t__) ;

int
resolves_to_fixed_type_p (tree instance, int* nonnull)
{
  tree t = TREE_TYPE (instance);
  int cdtorp = 0;

  tree fixed = fixed_type_or_null (instance, nonnull, &cdtorp);
  if (fixed == NULL_TREE)
    return 0;
  if (POINTER_TYPE_P (t))
    t = TREE_TYPE (t);
  if (!same_type_ignoring_top_level_qualifiers_p (t, fixed))
    return 0;
  return cdtorp ? -1 : 1;
}
