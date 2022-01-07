
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct gimplify_omp_ctx {int variables; } ;
typedef TYPE_2__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_5__ {scalar_t__ (* omp_privatize_by_reference ) (scalar_t__) ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;
struct TYPE_6__ {unsigned int value; } ;


 int DECL_P (scalar_t__) ;
 scalar_t__ DECL_SIZE (scalar_t__) ;
 scalar_t__ DECL_SIZE_UNIT (scalar_t__) ;
 scalar_t__ DECL_VALUE_EXPR (scalar_t__) ;
 unsigned int GOVD_DATA_SHARE_CLASS ;
 unsigned int GOVD_DEBUG_PRIVATE ;
 unsigned int GOVD_EXPLICIT ;
 unsigned int GOVD_FIRSTPRIVATE ;
 unsigned int GOVD_LASTPRIVATE ;
 unsigned int GOVD_LOCAL ;
 unsigned int GOVD_PRIVATE ;
 unsigned int GOVD_SEEN ;
 unsigned int GOVD_SHARED ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_ADDRESSABLE (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_NEEDS_CONSTRUCTING (scalar_t__) ;
 scalar_t__ TYPE_SIZE_UNIT (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 TYPE_4__ lang_hooks ;
 int omp_firstprivatize_type_sizes (struct gimplify_omp_ctx*,scalar_t__) ;
 int omp_firstprivatize_variable (struct gimplify_omp_ctx*,scalar_t__) ;
 int omp_notice_variable (struct gimplify_omp_ctx*,scalar_t__,int) ;
 int splay_tree_insert (int ,int ,unsigned int) ;
 TYPE_2__* splay_tree_lookup (int ,int ) ;
 scalar_t__ stub1 (scalar_t__) ;

__attribute__((used)) static void
omp_add_variable (struct gimplify_omp_ctx *ctx, tree decl, unsigned int flags)
{
  splay_tree_node n;
  unsigned int nflags;
  tree t;

  if (decl == error_mark_node || TREE_TYPE (decl) == error_mark_node)
    return;



  if (TREE_ADDRESSABLE (TREE_TYPE (decl))
      || TYPE_NEEDS_CONSTRUCTING (TREE_TYPE (decl)))
    flags |= GOVD_SEEN;

  n = splay_tree_lookup (ctx->variables, (splay_tree_key)decl);
  if (n != ((void*)0))
    {


      gcc_assert ((n->value & GOVD_DATA_SHARE_CLASS & flags) == 0);


      nflags = n->value | flags;
      gcc_assert ((nflags & GOVD_DATA_SHARE_CLASS)
    == (GOVD_FIRSTPRIVATE | GOVD_LASTPRIVATE));
      n->value = nflags;
      return;
    }




  if (DECL_SIZE (decl) && TREE_CODE (DECL_SIZE (decl)) != INTEGER_CST)
    {




      if (!(flags & GOVD_LOCAL))
 {
   nflags = flags & GOVD_PRIVATE ? GOVD_PRIVATE : GOVD_FIRSTPRIVATE;
   nflags |= flags & GOVD_SEEN;
   t = DECL_VALUE_EXPR (decl);
   gcc_assert (TREE_CODE (t) == INDIRECT_REF);
   t = TREE_OPERAND (t, 0);
   gcc_assert (DECL_P (t));
   omp_add_variable (ctx, t, nflags);
 }



      omp_firstprivatize_variable (ctx, DECL_SIZE_UNIT (decl));
      omp_firstprivatize_variable (ctx, DECL_SIZE (decl));
      omp_firstprivatize_type_sizes (ctx, TREE_TYPE (decl));




      if (flags & GOVD_SHARED)
 flags = GOVD_PRIVATE | GOVD_DEBUG_PRIVATE
  | (flags & (GOVD_SEEN | GOVD_EXPLICIT));
      else if (! (flags & GOVD_LOCAL))
 omp_notice_variable (ctx, TYPE_SIZE_UNIT (TREE_TYPE (decl)), 1);
    }
  else if (lang_hooks.decls.omp_privatize_by_reference (decl))
    {
      gcc_assert ((flags & GOVD_LOCAL) == 0);
      omp_firstprivatize_type_sizes (ctx, TREE_TYPE (decl));



      if ((flags & GOVD_SHARED) == 0)
 {
   t = TYPE_SIZE_UNIT (TREE_TYPE (TREE_TYPE (decl)));
   if (TREE_CODE (t) != INTEGER_CST)
     omp_notice_variable (ctx, t, 1);
 }
    }

  splay_tree_insert (ctx->variables, (splay_tree_key)decl, flags);
}
