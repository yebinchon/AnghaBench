#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct gimplify_omp_ctx {int default_kind; struct gimplify_omp_ctx* outer_context; int /*<<< orphan*/  location; int /*<<< orphan*/  is_parallel; int /*<<< orphan*/  variables; } ;
typedef  TYPE_2__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  enum omp_clause_default_kind { ____Placeholder_omp_clause_default_kind } omp_clause_default_kind ;
struct TYPE_5__ {int (* omp_predetermined_sharing ) (scalar_t__) ;int (* omp_disregard_value_expr ) (scalar_t__,int) ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;
struct TYPE_6__ {unsigned int value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 unsigned int GOVD_PRIVATE ; 
 unsigned int GOVD_SEEN ; 
 unsigned int GOVD_SHARED ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_DEFAULT_NONE 130 
#define  OMP_CLAUSE_DEFAULT_PRIVATE 129 
#define  OMP_CLAUSE_DEFAULT_SHARED 128 
 int OMP_CLAUSE_DEFAULT_UNSPECIFIED ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 TYPE_4__ lang_hooks ; 
 int /*<<< orphan*/  FUNC11 (struct gimplify_omp_ctx*,scalar_t__,unsigned int) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__,int) ; 
 int FUNC15 (scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC16 (struct gimplify_omp_ctx *ctx, tree decl, bool in_code)
{
  splay_tree_node n;
  unsigned flags = in_code ? GOVD_SEEN : 0;
  bool ret = false, shared;

  if (decl == error_mark_node || FUNC6 (decl) == error_mark_node)
    return false;

  /* Threadprivate variables are predetermined.  */
  if (FUNC10 (decl))
    {
      if (FUNC3 (decl))
	return false;

      if (FUNC0 (decl))
	{
	  tree value = FUNC9 (FUNC4 (decl));

	  if (value && FUNC2 (value) && FUNC3 (value))
	    return false;
	}
    }

  n = FUNC12 (ctx->variables, (splay_tree_key)decl);
  if (n == NULL)
    {
      enum omp_clause_default_kind default_kind, kind;

      if (!ctx->is_parallel)
	goto do_outer;

      /* ??? Some compiler-generated variables (like SAVE_EXPRs) could be
	 remapped firstprivate instead of shared.  To some extent this is
	 addressed in omp_firstprivatize_type_sizes, but not effectively.  */
      default_kind = ctx->default_kind;
      kind = lang_hooks.decls.omp_predetermined_sharing (decl);
      if (kind != OMP_CLAUSE_DEFAULT_UNSPECIFIED)
	default_kind = kind;

      switch (default_kind)
	{
	case OMP_CLAUSE_DEFAULT_NONE:
	  FUNC7 ("%qs not specified in enclosing parallel",
		 FUNC5 (FUNC1 (decl)));
	  FUNC7 ("%Henclosing parallel", &ctx->location);
	  /* FALLTHRU */
	case OMP_CLAUSE_DEFAULT_SHARED:
	  flags |= GOVD_SHARED;
	  break;
	case OMP_CLAUSE_DEFAULT_PRIVATE:
	  flags |= GOVD_PRIVATE;
	  break;
	default:
	  FUNC8 ();
	}

      FUNC11 (ctx, decl, flags);

      shared = (flags & GOVD_SHARED) != 0;
      ret = lang_hooks.decls.omp_disregard_value_expr (decl, shared);
      goto do_outer;
    }

  shared = ((flags | n->value) & GOVD_SHARED) != 0;
  ret = lang_hooks.decls.omp_disregard_value_expr (decl, shared);

  /* If nothing changed, there's nothing left to do.  */
  if ((n->value & flags) == flags)
    return ret;
  flags |= n->value;
  n->value = flags;

 do_outer:
  /* If the variable is private in the current context, then we don't
     need to propagate anything to an outer context.  */
  if (flags & GOVD_PRIVATE)
    return ret;
  if (ctx->outer_context
      && FUNC16 (ctx->outer_context, decl, in_code))
    return true;
  return ret;
}