
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int special_function_kind ;


 int ADDR_EXPR ;
 scalar_t__ ARRAY_TYPE ;
 int COMPOUND_EXPR ;
 int MINUS_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TARGET_EXPR_SLOT (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_SIZE_UNIT (int ) ;
 scalar_t__ array_type_nelts_total (scalar_t__) ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_indirect_ref (scalar_t__,int *) ;
 scalar_t__ build_pointer_type (int ) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int) ;
 scalar_t__ build_vec_delete_1 (scalar_t__,scalar_t__,scalar_t__,int ,int) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ get_target_expr (scalar_t__) ;
 int sizetype ;
 scalar_t__ strip_array_types (scalar_t__) ;

tree
build_vec_delete (tree base, tree maxindex,
    special_function_kind auto_delete_vec, int use_global_delete)
{
  tree type;
  tree rval;
  tree base_init = NULL_TREE;

  type = TREE_TYPE (base);

  if (TREE_CODE (type) == POINTER_TYPE)
    {

      tree cookie_addr;

      if (TREE_SIDE_EFFECTS (base))
 {
   base_init = get_target_expr (base);
   base = TARGET_EXPR_SLOT (base_init);
 }
      type = strip_array_types (TREE_TYPE (type));
      cookie_addr = build2 (MINUS_EXPR,
       build_pointer_type (sizetype),
       base,
       TYPE_SIZE_UNIT (sizetype));
      maxindex = build_indirect_ref (cookie_addr, ((void*)0));
    }
  else if (TREE_CODE (type) == ARRAY_TYPE)
    {


      maxindex = array_type_nelts_total (type);
      type = strip_array_types (type);
      base = build_unary_op (ADDR_EXPR, base, 1);
      if (TREE_SIDE_EFFECTS (base))
 {
   base_init = get_target_expr (base);
   base = TARGET_EXPR_SLOT (base_init);
 }
    }
  else
    {
      if (base != error_mark_node)
 error ("type to vector delete is neither pointer or array type");
      return error_mark_node;
    }

  rval = build_vec_delete_1 (base, maxindex, type, auto_delete_vec,
        use_global_delete);
  if (base_init)
    rval = build2 (COMPOUND_EXPR, TREE_TYPE (rval), base_init, rval);

  return rval;
}
