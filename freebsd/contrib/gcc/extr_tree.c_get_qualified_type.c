
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_NEXT_VARIANT (scalar_t__) ;
 int TYPE_QUALS (scalar_t__) ;
 scalar_t__ check_qualified_type (scalar_t__,scalar_t__,int) ;

tree
get_qualified_type (tree type, int type_quals)
{
  tree t;

  if (TYPE_QUALS (type) == type_quals)
    return type;




  for (t = TYPE_MAIN_VARIANT (type); t; t = TYPE_NEXT_VARIANT (t))
    if (check_qualified_type (t, type, type_quals))
      return t;

  return NULL_TREE;
}
