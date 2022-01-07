
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_PURPOSE (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ is_attribute_with_length_p (char const*,size_t,int ) ;
 size_t strlen (char const*) ;

tree
lookup_attribute (const char *attr_name, tree list)
{
  tree l;
  size_t attr_len = strlen (attr_name);

  for (l = list; l; l = TREE_CHAIN (l))
    {
      gcc_assert (TREE_CODE (TREE_PURPOSE (l)) == IDENTIFIER_NODE);
      if (is_attribute_with_length_p (attr_name, attr_len, TREE_PURPOSE (l)))
 return l;
    }

  return NULL_TREE;
}
