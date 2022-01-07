
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_6__ {scalar_t__ is_nested; int * record_type; } ;
typedef TYPE_1__ omp_context ;


 scalar_t__ DECL_ABSTRACT_ORIGIN (scalar_t__) ;
 int DECL_HAS_VALUE_EXPR_P (scalar_t__) ;
 int MODIFY_EXPR ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (int *) ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_fold_addr_expr (scalar_t__) ;
 scalar_t__ build_sender_ref (scalar_t__,TYPE_1__*) ;
 int gimplify_and_add (scalar_t__,scalar_t__*) ;
 scalar_t__ lookup_decl_in_outer_ctx (scalar_t__,TYPE_1__*) ;
 scalar_t__ maybe_lookup_decl (scalar_t__,TYPE_1__*) ;
 scalar_t__ use_pointer_for_field (scalar_t__,int) ;
 int void_type_node ;

__attribute__((used)) static void
lower_send_shared_vars (tree *ilist, tree *olist, omp_context *ctx)
{
  tree var, ovar, nvar, f, x;

  if (ctx->record_type == ((void*)0))
    return;

  for (f = TYPE_FIELDS (ctx->record_type); f ; f = TREE_CHAIN (f))
    {
      ovar = DECL_ABSTRACT_ORIGIN (f);
      nvar = maybe_lookup_decl (ovar, ctx);
      if (!nvar || !DECL_HAS_VALUE_EXPR_P (nvar))
 continue;

      var = ovar;




      if (ctx->is_nested)
 var = lookup_decl_in_outer_ctx (ovar, ctx);

      if (use_pointer_for_field (ovar, 1))
 {
   x = build_sender_ref (ovar, ctx);
   var = build_fold_addr_expr (var);
   x = build2 (MODIFY_EXPR, void_type_node, x, var);
   gimplify_and_add (x, ilist);
 }
      else
 {
   x = build_sender_ref (ovar, ctx);
   x = build2 (MODIFY_EXPR, void_type_node, x, var);
   gimplify_and_add (x, ilist);

   x = build_sender_ref (ovar, ctx);
   x = build2 (MODIFY_EXPR, void_type_node, var, x);
   gimplify_and_add (x, olist);
 }
    }
}
