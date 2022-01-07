
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ IDENTIFIER_HAS_TYPE_VALUE (scalar_t__) ;
 scalar_t__ IDENTIFIER_TYPE_VALUE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ error_mark_node ;

tree
get_type_value (tree name)
{
  if (name == error_mark_node)
    return NULL_TREE;

  if (IDENTIFIER_HAS_TYPE_VALUE (name))
    return IDENTIFIER_TYPE_VALUE (name);
  else
    return NULL_TREE;
}
