
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int name; } ;
typedef scalar_t__ TREE_READONLY ;


 int ALIGNOF_EXPR ;
 scalar_t__ COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ METHOD_TYPE ;
 int SIZEOF_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_SIZE (scalar_t__) ;
 scalar_t__ build_min (int,int ,scalar_t__) ;
 scalar_t__ c_sizeof_or_alignof_type (int ,int,int) ;
 int complete_type (scalar_t__) ;
 int dependent_type_p (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ non_reference (scalar_t__) ;
 TYPE_1__* operator_name_info ;
 scalar_t__ pedantic ;
 int pedwarn (char*,int ) ;
 scalar_t__ processing_template_decl ;
 scalar_t__ size_one_node ;
 int size_type_node ;
 scalar_t__ warn_pointer_arith ;

tree
cxx_sizeof_or_alignof_type (tree type, enum tree_code op, bool complain)
{
  tree value;
  bool dependent_p;

  gcc_assert (op == SIZEOF_EXPR || op == ALIGNOF_EXPR);
  if (type == error_mark_node)
    return error_mark_node;

  type = non_reference (type);
  if (TREE_CODE (type) == METHOD_TYPE)
    {
      if (complain && (pedantic || warn_pointer_arith))
 pedwarn ("invalid application of %qs to a member function",
   operator_name_info[(int) op].name);
      value = size_one_node;
    }

  dependent_p = dependent_type_p (type);
  if (!dependent_p)
    complete_type (type);
  if (dependent_p






      || (processing_template_decl
   && COMPLETE_TYPE_P (type)
   && TREE_CODE (TYPE_SIZE (type)) != INTEGER_CST))
    {
      value = build_min (op, size_type_node, type);
      TREE_READONLY (value) = 1;
      return value;
    }

  return c_sizeof_or_alignof_type (complete_type (type),
       op == SIZEOF_EXPR,
       complain);
}
