
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ IDENTIFIER_TEMPLATE (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ constructor_name_full (scalar_t__) ;

bool
constructor_name_p (tree name, tree type)
{
  tree ctor_name;

  if (!name)
    return 0;

  if (TREE_CODE (name) != IDENTIFIER_NODE)
    return 0;

  ctor_name = constructor_name_full (type);
  if (name == ctor_name)
    return 1;
  if (IDENTIFIER_TEMPLATE (ctor_name)
      && name == IDENTIFIER_TEMPLATE (ctor_name))
    return 1;
  return 0;
}
