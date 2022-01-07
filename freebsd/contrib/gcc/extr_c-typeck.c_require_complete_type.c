
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int c_incomplete_type_error (scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;

tree
require_complete_type (tree value)
{
  tree type = TREE_TYPE (value);

  if (value == error_mark_node || type == error_mark_node)
    return error_mark_node;


  if (COMPLETE_TYPE_P (type))
    return value;

  c_incomplete_type_error (value, type);
  return error_mark_node;
}
