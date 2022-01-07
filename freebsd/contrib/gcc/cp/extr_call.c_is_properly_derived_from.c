
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DERIVED_FROM_P (int ,int ) ;
 int IS_AGGR_TYPE_CODE (int ) ;
 int TREE_CODE (int ) ;
 int same_type_ignoring_top_level_qualifiers_p (int ,int ) ;

bool
is_properly_derived_from (tree derived, tree base)
{
  if (!IS_AGGR_TYPE_CODE (TREE_CODE (derived))
      || !IS_AGGR_TYPE_CODE (TREE_CODE (base)))
    return 0;



  return (!same_type_ignoring_top_level_qualifiers_p (derived, base)
   && DERIVED_FROM_P (base, derived));
}
