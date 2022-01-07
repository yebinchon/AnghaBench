
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int TREE_USED ;


 int ADDR_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ build1 (int ,int ,int) ;
 scalar_t__ error_mark_node ;
 scalar_t__ lookup_label (scalar_t__) ;
 scalar_t__ null_pointer_node ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int ptr_type_node ;

tree
finish_label_address_expr (tree label)
{
  tree result;

  if (pedantic)
    pedwarn ("taking the address of a label is non-standard");

  if (label == error_mark_node)
    return error_mark_node;

  label = lookup_label (label);
  if (label == NULL_TREE)
    result = null_pointer_node;
  else
    {
      TREE_USED (label) = 1;
      result = build1 (ADDR_EXPR, ptr_type_node, label);



    }

  return result;
}
