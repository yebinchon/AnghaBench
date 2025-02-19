
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ boolean_false_node ;
 scalar_t__ boolean_true_node ;
 scalar_t__ boolean_type_node ;
 scalar_t__ build_int_cst (scalar_t__,int) ;
 scalar_t__ integer_one_node ;
 scalar_t__ integer_type_node ;
 scalar_t__ integer_zero_node ;

tree
constant_boolean_node (int value, tree type)
{
  if (type == integer_type_node)
    return value ? integer_one_node : integer_zero_node;
  else if (type == boolean_type_node)
    return value ? boolean_true_node : boolean_false_node;
  else
    return build_int_cst (type, value);
}
