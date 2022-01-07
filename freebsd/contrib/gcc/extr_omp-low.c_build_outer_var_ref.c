
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
struct TYPE_6__ {scalar_t__ outer; } ;
typedef TYPE_1__ omp_context ;


 int DECL_VALUE_EXPR (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int build_fold_indirect_ref (int ) ;
 int build_receiver_ref (int ,int,TYPE_1__*) ;
 int gcc_unreachable () ;
 scalar_t__ is_global_var (int ) ;
 scalar_t__ is_parallel_ctx (TYPE_1__*) ;
 scalar_t__ is_reference (int ) ;
 scalar_t__ is_variable_sized (int ) ;
 int lookup_decl (int ,scalar_t__) ;
 int maybe_lookup_decl_in_outer_ctx (int ,TYPE_1__*) ;
 int use_pointer_for_field (int ,int) ;

__attribute__((used)) static tree
build_outer_var_ref (tree var, omp_context *ctx)
{
  tree x;

  if (is_global_var (maybe_lookup_decl_in_outer_ctx (var, ctx)))
    x = var;
  else if (is_variable_sized (var))
    {
      x = TREE_OPERAND (DECL_VALUE_EXPR (var), 0);
      x = build_outer_var_ref (x, ctx);
      x = build_fold_indirect_ref (x);
    }
  else if (is_parallel_ctx (ctx))
    {
      bool by_ref = use_pointer_for_field (var, 0);
      x = build_receiver_ref (var, by_ref, ctx);
    }
  else if (ctx->outer)
    x = lookup_decl (var, ctx->outer);
  else if (is_reference (var))


    x = var;
  else
    gcc_unreachable ();

  if (is_reference (var))
    x = build_fold_indirect_ref (x);

  return x;
}
