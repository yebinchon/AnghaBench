
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;

int HasByrefArray(tree byrefType)
{
  tree s1;

  if (TREE_CODE(byrefType) != RECORD_TYPE)
    return 0;

  for (s1 = TYPE_FIELDS (byrefType); s1; s1 = TREE_CHAIN (s1))
    {
      if (TREE_CODE(TREE_TYPE(s1)) == ARRAY_TYPE)
  return 1;
    }
  return 0;
}
