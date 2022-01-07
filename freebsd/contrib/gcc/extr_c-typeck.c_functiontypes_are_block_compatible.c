
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 int type_lists_compatible_p (int ,int ) ;
 int types_are_block_compatible (int ,int ) ;

__attribute__((used)) static bool
functiontypes_are_block_compatible (tree f1, tree f2)
{
  tree arg1, arg2;
  if (!types_are_block_compatible (TREE_TYPE (f1), TREE_TYPE (f2)))
    return 0;
  arg1 = TYPE_ARG_TYPES (f1);
  arg2 = TYPE_ARG_TYPES (f2);

  return (!arg1) || (type_lists_compatible_p (arg1, arg2) == 1);
}
