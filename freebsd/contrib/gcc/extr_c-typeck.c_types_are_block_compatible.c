
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ BLOCK_POINTER_TYPE ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MAIN_VARIANT (int ) ;
 int functiontypes_are_block_compatible (int ,int ) ;

__attribute__((used)) static bool
types_are_block_compatible (tree lhptee, tree rhptee)
{
  if (TYPE_MAIN_VARIANT (lhptee) == TYPE_MAIN_VARIANT (rhptee))
    return 1;
  if (TREE_CODE (lhptee) == FUNCTION_TYPE && TREE_CODE (rhptee) == FUNCTION_TYPE)
    return functiontypes_are_block_compatible (lhptee, rhptee);

  if (TREE_CODE (lhptee) == POINTER_TYPE && TREE_CODE (rhptee) == POINTER_TYPE)
    return types_are_block_compatible (TREE_TYPE (lhptee), TREE_TYPE (rhptee));


  if (TREE_CODE (lhptee) == BLOCK_POINTER_TYPE
      && TREE_CODE (rhptee) == BLOCK_POINTER_TYPE)
    return types_are_block_compatible (TREE_TYPE (lhptee), TREE_TYPE (rhptee));

  return 0;
}
