
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ BASELINK ;
 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 int DECL_EXTERNAL_LINKAGE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int error (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ instantiate_type (scalar_t__,scalar_t__,int ) ;
 int tf_none ;

__attribute__((used)) static tree
convert_nontype_argument_function (tree type, tree expr)
{
  tree fns = expr;
  tree fn, fn_no_ptr;

  fn = instantiate_type (type, fns, tf_none);
  if (fn == error_mark_node)
    return error_mark_node;

  fn_no_ptr = fn;
  if (TREE_CODE (fn_no_ptr) == ADDR_EXPR)
    fn_no_ptr = TREE_OPERAND (fn_no_ptr, 0);
  if (TREE_CODE (fn_no_ptr) == BASELINK)
    fn_no_ptr = BASELINK_FUNCTIONS (fn_no_ptr);







  if (!DECL_EXTERNAL_LINKAGE_P (fn_no_ptr))
    {
      error ("%qE is not a valid template argument for type %qT "
      "because function %qD has not external linkage",
      expr, type, fn_no_ptr);
      return NULL_TREE;
    }

  return fn;
}
