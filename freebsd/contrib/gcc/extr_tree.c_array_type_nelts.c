
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int MINUS_EXPR ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;

tree
array_type_nelts (tree type)
{
  tree index_type, min, max;



  if (! TYPE_DOMAIN (type))
    return error_mark_node;

  index_type = TYPE_DOMAIN (type);
  min = TYPE_MIN_VALUE (index_type);
  max = TYPE_MAX_VALUE (index_type);

  return (integer_zerop (min)
   ? max
   : fold_build2 (MINUS_EXPR, TREE_TYPE (max), max, min));
}
