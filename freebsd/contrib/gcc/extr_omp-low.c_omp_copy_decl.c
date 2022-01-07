
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_6__ {scalar_t__ src_fn; } ;
struct TYPE_5__ {TYPE_4__ cb; struct TYPE_5__* outer; } ;
typedef TYPE_1__ omp_context ;
typedef int copy_body_data ;
typedef scalar_t__ DECL_CONTEXT ;


 scalar_t__ LABEL_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ create_artificial_label () ;
 scalar_t__ current_function_decl ;
 scalar_t__ decl_function_context (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int insert_decl_map (TYPE_4__*,scalar_t__,scalar_t__) ;
 scalar_t__ is_global_var (scalar_t__) ;
 int is_parallel_ctx (TYPE_1__*) ;
 scalar_t__ maybe_lookup_decl (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static tree
omp_copy_decl (tree var, copy_body_data *cb)
{
  omp_context *ctx = (omp_context *) cb;
  tree new_var;

  if (TREE_CODE (var) == LABEL_DECL)
    {
      new_var = create_artificial_label ();
      DECL_CONTEXT (new_var) = current_function_decl;
      insert_decl_map (&ctx->cb, var, new_var);
      return new_var;
    }

  while (!is_parallel_ctx (ctx))
    {
      ctx = ctx->outer;
      if (ctx == ((void*)0))
 return var;
      new_var = maybe_lookup_decl (var, ctx);
      if (new_var)
 return new_var;
    }

  if (is_global_var (var) || decl_function_context (var) != ctx->cb.src_fn)
    return var;

  return error_mark_node;
}
