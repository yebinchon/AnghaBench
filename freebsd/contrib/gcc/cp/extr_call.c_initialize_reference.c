
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_6__ {TYPE_2__* next; } ;
struct TYPE_7__ {scalar_t__ kind; scalar_t__ type; TYPE_1__ u; scalar_t__ check_copy_constructor_p; scalar_t__ bad_p; } ;
typedef TYPE_2__ conversion ;


 int ADDR_EXPR ;
 int COMPOUND_EXPR ;
 int INIT_EXPR ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TARGET_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_HAS_NONTRIVIAL_DESTRUCTOR (scalar_t__) ;
 int TYPE_QUALS (scalar_t__) ;
 int TYPE_QUAL_CONST ;
 int add_decl_expr (scalar_t__) ;
 int at_eof ;
 scalar_t__ at_function_scope_p () ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_address (scalar_t__) ;
 scalar_t__ build_nop (scalar_t__,scalar_t__) ;
 int build_pointer_type (scalar_t__) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int ) ;
 int check_constructor_callable (scalar_t__,scalar_t__) ;
 scalar_t__ ck_base ;
 scalar_t__ ck_ref_bind ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 scalar_t__ convert_like (TYPE_2__*,scalar_t__) ;
 scalar_t__ convert_like_real (TYPE_2__*,scalar_t__,scalar_t__,int ,int,int,int) ;
 scalar_t__ convert_to_base (scalar_t__,int ,int,int) ;
 scalar_t__ cxx_maybe_build_cleanup (scalar_t__) ;
 int error (char*,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ error_operand_p (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ get_target_expr (scalar_t__) ;
 int layout_decl (scalar_t__,int ) ;
 scalar_t__ make_temporary_var_for_ref_to_temp (scalar_t__,scalar_t__) ;
 int obstack_free (int *,void*) ;
 scalar_t__ perform_implicit_conversion (int ,scalar_t__) ;
 int real_lvalue_p (scalar_t__) ;
 TYPE_2__* reference_binding (scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 int rest_of_decl_compilation (scalar_t__,int,int ) ;
 int static_aggregates ;
 int tree_cons (scalar_t__,scalar_t__,int ) ;

tree
initialize_reference (tree type, tree expr, tree decl, tree *cleanup)
{
  conversion *conv;
  void *p;

  if (type == error_mark_node || error_operand_p (expr))
    return error_mark_node;


  p = conversion_obstack_alloc (0);

  conv = reference_binding (type, TREE_TYPE (expr), expr, 0,
       LOOKUP_NORMAL);
  if (!conv || conv->bad_p)
    {
      if (!(TYPE_QUALS (TREE_TYPE (type)) & TYPE_QUAL_CONST)
   && !real_lvalue_p (expr))
 error ("invalid initialization of non-const reference of "
        "type %qT from a temporary of type %qT",
        type, TREE_TYPE (expr));
      else
 error ("invalid initialization of reference of type "
        "%qT from expression of type %qT", type,
        TREE_TYPE (expr));
      return error_mark_node;
    }
  gcc_assert (conv->kind == ck_ref_bind);
  if (decl)
    {
      tree var;
      tree base_conv_type;


      conv = conv->u.next;


      if (conv->kind == ck_base)
 {
   if (conv->check_copy_constructor_p)
     check_constructor_callable (TREE_TYPE (expr), expr);
   base_conv_type = conv->type;
   conv = conv->u.next;
 }
      else
 base_conv_type = NULL_TREE;

      expr = convert_like_real (conv, expr,
           NULL_TREE, 0,
              -1,
                                  1,
                 0);
      if (error_operand_p (expr))
 expr = error_mark_node;
      else
 {
   if (!real_lvalue_p (expr))
     {
       tree init;
       tree type;


       type = TREE_TYPE (expr);
       var = make_temporary_var_for_ref_to_temp (decl, type);
       layout_decl (var, 0);
       if (TREE_CODE (expr) != TARGET_EXPR)
  expr = get_target_expr (expr);


       init = build2 (INIT_EXPR, type, var, expr);
       if (at_function_scope_p ())
  {
    add_decl_expr (var);
    *cleanup = cxx_maybe_build_cleanup (var);
  }
       else
  {
    rest_of_decl_compilation (var, 1, at_eof);
    if (TYPE_HAS_NONTRIVIAL_DESTRUCTOR (type))
      static_aggregates = tree_cons (NULL_TREE, var,
         static_aggregates);
  }

       expr = build_address (var);
       if (base_conv_type)
  expr = convert_to_base (expr,
     build_pointer_type (base_conv_type),
                      1,
                 1);
       expr = build2 (COMPOUND_EXPR, TREE_TYPE (expr), init, expr);
     }
   else

     expr = build_unary_op (ADDR_EXPR, expr, 0);

   if (base_conv_type)
     expr = (perform_implicit_conversion
      (build_pointer_type (base_conv_type), expr));
   expr = build_nop (type, expr);
 }
    }
  else

    expr = convert_like (conv, expr);


  obstack_free (&conversion_obstack, p);

  return expr;
}
