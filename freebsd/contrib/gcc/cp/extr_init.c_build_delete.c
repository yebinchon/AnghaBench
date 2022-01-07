
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ special_function_kind ;


 int ADDR_EXPR ;
 scalar_t__ ARRAY_TYPE ;
 int CLASSTYPE_DESTRUCTORS (scalar_t__) ;
 scalar_t__ CLASSTYPE_LAZY_DESTRUCTOR (scalar_t__) ;
 int COMPLETE_TYPE_P (scalar_t__) ;
 int COMPOUND_EXPR ;
 int COND_EXPR ;
 int DECL_VIRTUAL_P (int ) ;
 int DELETE_EXPR ;
 int IS_AGGR_TYPE (scalar_t__) ;
 int LOOKUP_DESTRUCTOR ;
 int NE_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__) ;
 scalar_t__ TYPE_GETS_REG_DELETE (scalar_t__) ;
 scalar_t__ TYPE_HAS_TRIVIAL_DESTRUCTOR (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (scalar_t__) ;
 int array_type_nelts (scalar_t__) ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ build3 (int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_builtin_delete_call (scalar_t__) ;
 scalar_t__ build_dtor_call (int ,scalar_t__,int) ;
 int build_indirect_ref (scalar_t__,int *) ;
 scalar_t__ build_op_delete_call (int ,scalar_t__,int ,int,scalar_t__,scalar_t__) ;
 int build_pointer_type (scalar_t__) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int ) ;
 scalar_t__ build_vec_delete (scalar_t__,int ,scalar_t__,int) ;
 int complete_type (scalar_t__) ;
 scalar_t__ convert_force (int ,scalar_t__,int ) ;
 int cp_build_binary_op (int ,scalar_t__,int ) ;
 int cxx_incomplete_type_diagnostic (scalar_t__,scalar_t__,int) ;
 int cxx_sizeof_nowarn (scalar_t__) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold (int ) ;
 int gcc_assert (int ) ;
 int inform (char*) ;
 scalar_t__ integer_one_node ;
 int integer_zero_node ;
 int lazily_declare_fn (int ,scalar_t__) ;
 scalar_t__ save_expr (scalar_t__) ;
 scalar_t__ sfk_complete_destructor ;
 scalar_t__ sfk_deleting_destructor ;
 int sfk_destructor ;
 int void_type_node ;
 scalar_t__ void_zero_node ;
 int warning (int ,char*) ;

tree
build_delete (tree type, tree addr, special_function_kind auto_delete,
    int flags, int use_global_delete)
{
  tree expr;

  if (addr == error_mark_node)
    return error_mark_node;



  if (type == error_mark_node)
    return error_mark_node;

  type = TYPE_MAIN_VARIANT (type);

  if (TREE_CODE (type) == POINTER_TYPE)
    {
      bool complete_p = 1;

      type = TYPE_MAIN_VARIANT (TREE_TYPE (type));
      if (TREE_CODE (type) == ARRAY_TYPE)
 goto handle_array;







      if (!VOID_TYPE_P (type))
 {
   complete_type (type);
   if (!COMPLETE_TYPE_P (type))
     {
       warning (0, "possible problem detected in invocation of "
         "delete operator:");
       cxx_incomplete_type_diagnostic (addr, type, 1);
       inform ("neither the destructor nor the class-specific "
        "operator delete will be called, even if they are "
        "declared when the class is defined.");
       complete_p = 0;
     }
 }
      if (VOID_TYPE_P (type) || !complete_p || !IS_AGGR_TYPE (type))

 return build_builtin_delete_call (addr);
      if (TREE_SIDE_EFFECTS (addr))
 addr = save_expr (addr);


      addr = convert_force (build_pointer_type (type), addr, 0);
    }
  else if (TREE_CODE (type) == ARRAY_TYPE)
    {
    handle_array:

      if (TYPE_DOMAIN (type) == NULL_TREE)
 {
   error ("unknown array size in delete");
   return error_mark_node;
 }
      return build_vec_delete (addr, array_type_nelts (type),
          auto_delete, use_global_delete);
    }
  else
    {



      addr = build_unary_op (ADDR_EXPR, addr, 0);
      if (TREE_SIDE_EFFECTS (addr))
 addr = save_expr (addr);

      addr = convert_force (build_pointer_type (type), addr, 0);
    }

  gcc_assert (IS_AGGR_TYPE (type));

  if (TYPE_HAS_TRIVIAL_DESTRUCTOR (type))
    {
      if (auto_delete != sfk_deleting_destructor)
 return void_zero_node;

      return build_op_delete_call (DELETE_EXPR, addr,
       cxx_sizeof_nowarn (type),
       use_global_delete,
                     NULL_TREE,
                    NULL_TREE);
    }
  else
    {
      tree do_delete = NULL_TREE;
      tree ifexp;

      if (CLASSTYPE_LAZY_DESTRUCTOR (type))
 lazily_declare_fn (sfk_destructor, type);




      if (use_global_delete && auto_delete == sfk_deleting_destructor)
 {

   addr = save_expr (addr);

   do_delete = build_builtin_delete_call (addr);


   auto_delete = sfk_complete_destructor;
 }



      else if (!DECL_VIRTUAL_P (CLASSTYPE_DESTRUCTORS (type))
        && auto_delete == sfk_deleting_destructor)
 {

   addr = save_expr (addr);

   do_delete = build_op_delete_call (DELETE_EXPR,
         addr,
         cxx_sizeof_nowarn (type),
                      0,
                       NULL_TREE,
                      NULL_TREE);

   auto_delete = sfk_complete_destructor;
 }
      else if (auto_delete == sfk_deleting_destructor
        && TYPE_GETS_REG_DELETE (type))
 {


   build_op_delete_call (DELETE_EXPR, addr, cxx_sizeof_nowarn (type),
                 0,
                  NULL_TREE,
                 NULL_TREE);
 }

      expr = build_dtor_call (build_indirect_ref (addr, ((void*)0)),
         auto_delete, flags);
      if (do_delete)
 expr = build2 (COMPOUND_EXPR, void_type_node, expr, do_delete);

      if (flags & LOOKUP_DESTRUCTOR)

 ifexp = integer_one_node;
      else

 ifexp = fold (cp_build_binary_op (NE_EXPR, addr, integer_zero_node));

      if (ifexp != integer_one_node)
 expr = build3 (COND_EXPR, void_type_node,
         ifexp, expr, void_zero_node);

      return expr;
    }
}
