
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ QUAL_UNION_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ UNION_TYPE ;

int
ipa_type_escape_star_count_of_interesting_type (tree type)
{
  int count = 0;

  if (!type)
    return -1;
  type = TYPE_MAIN_VARIANT (type);
  while (POINTER_TYPE_P (type))
    {
      type = TYPE_MAIN_VARIANT (TREE_TYPE (type));
      count++;
    }


  if (TREE_CODE (type) == RECORD_TYPE
      || TREE_CODE (type) == QUAL_UNION_TYPE
      || TREE_CODE (type) == UNION_TYPE)
    return count;
  else
    return -1;
}
