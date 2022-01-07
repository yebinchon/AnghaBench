
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct gimplify_omp_ctx {int default_kind; struct gimplify_omp_ctx* outer_context; int location; int is_parallel; int variables; } ;
typedef TYPE_2__* splay_tree_node ;
typedef int splay_tree_key ;
typedef enum omp_clause_default_kind { ____Placeholder_omp_clause_default_kind } omp_clause_default_kind ;
struct TYPE_5__ {int (* omp_predetermined_sharing ) (scalar_t__) ;int (* omp_disregard_value_expr ) (scalar_t__,int) ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;
struct TYPE_6__ {unsigned int value; } ;


 scalar_t__ DECL_HAS_VALUE_EXPR_P (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ DECL_THREAD_LOCAL_P (scalar_t__) ;
 int DECL_VALUE_EXPR (scalar_t__) ;
 unsigned int GOVD_PRIVATE ;
 unsigned int GOVD_SEEN ;
 unsigned int GOVD_SHARED ;
 int * IDENTIFIER_POINTER (int ) ;



 int OMP_CLAUSE_DEFAULT_UNSPECIFIED ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int error (char*,int *) ;
 scalar_t__ error_mark_node ;
 int gcc_unreachable () ;
 scalar_t__ get_base_address (int ) ;
 scalar_t__ is_global_var (scalar_t__) ;
 TYPE_4__ lang_hooks ;
 int omp_add_variable (struct gimplify_omp_ctx*,scalar_t__,unsigned int) ;
 TYPE_2__* splay_tree_lookup (int ,int ) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,int) ;
 int stub3 (scalar_t__,int) ;

__attribute__((used)) static bool
omp_notice_variable (struct gimplify_omp_ctx *ctx, tree decl, bool in_code)
{
  splay_tree_node n;
  unsigned flags = in_code ? GOVD_SEEN : 0;
  bool ret = 0, shared;

  if (decl == error_mark_node || TREE_TYPE (decl) == error_mark_node)
    return 0;


  if (is_global_var (decl))
    {
      if (DECL_THREAD_LOCAL_P (decl))
 return 0;

      if (DECL_HAS_VALUE_EXPR_P (decl))
 {
   tree value = get_base_address (DECL_VALUE_EXPR (decl));

   if (value && DECL_P (value) && DECL_THREAD_LOCAL_P (value))
     return 0;
 }
    }

  n = splay_tree_lookup (ctx->variables, (splay_tree_key)decl);
  if (n == ((void*)0))
    {
      enum omp_clause_default_kind default_kind, kind;

      if (!ctx->is_parallel)
 goto do_outer;




      default_kind = ctx->default_kind;
      kind = lang_hooks.decls.omp_predetermined_sharing (decl);
      if (kind != OMP_CLAUSE_DEFAULT_UNSPECIFIED)
 default_kind = kind;

      switch (default_kind)
 {
 case 130:
   error ("%qs not specified in enclosing parallel",
   IDENTIFIER_POINTER (DECL_NAME (decl)));
   error ("%Henclosing parallel", &ctx->location);

 case 128:
   flags |= GOVD_SHARED;
   break;
 case 129:
   flags |= GOVD_PRIVATE;
   break;
 default:
   gcc_unreachable ();
 }

      omp_add_variable (ctx, decl, flags);

      shared = (flags & GOVD_SHARED) != 0;
      ret = lang_hooks.decls.omp_disregard_value_expr (decl, shared);
      goto do_outer;
    }

  shared = ((flags | n->value) & GOVD_SHARED) != 0;
  ret = lang_hooks.decls.omp_disregard_value_expr (decl, shared);


  if ((n->value & flags) == flags)
    return ret;
  flags |= n->value;
  n->value = flags;

 do_outer:


  if (flags & GOVD_PRIVATE)
    return ret;
  if (ctx->outer_context
      && omp_notice_variable (ctx->outer_context, decl, in_code))
    return 1;
  return ret;
}
