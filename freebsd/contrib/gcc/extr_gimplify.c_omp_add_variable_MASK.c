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
struct gimplify_omp_ctx {int /*<<< orphan*/  variables; } ;
typedef  TYPE_2__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
struct TYPE_5__ {scalar_t__ (* omp_privatize_by_reference ) (scalar_t__) ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;
struct TYPE_6__ {unsigned int value; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
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
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_4__ lang_hooks ; 
 int /*<<< orphan*/  FUNC11 (struct gimplify_omp_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct gimplify_omp_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct gimplify_omp_ctx*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 

__attribute__((used)) static void
FUNC17 (struct gimplify_omp_ctx *ctx, tree decl, unsigned int flags)
{
  splay_tree_node n;
  unsigned int nflags;
  tree t;

  if (decl == error_mark_node || FUNC7 (decl) == error_mark_node)
    return;

  /* Never elide decls whose type has TREE_ADDRESSABLE set.  This means
     there are constructors involved somewhere.  */
  if (FUNC4 (FUNC7 (decl))
      || FUNC8 (FUNC7 (decl)))
    flags |= GOVD_SEEN;

  n = FUNC15 (ctx->variables, (splay_tree_key)decl);
  if (n != NULL)
    {
      /* We shouldn't be re-adding the decl with the same data
	 sharing class.  */
      FUNC10 ((n->value & GOVD_DATA_SHARE_CLASS & flags) == 0);
      /* The only combination of data sharing classes we should see is
	 FIRSTPRIVATE and LASTPRIVATE.  */
      nflags = n->value | flags;
      FUNC10 ((nflags & GOVD_DATA_SHARE_CLASS)
		  == (GOVD_FIRSTPRIVATE | GOVD_LASTPRIVATE));
      n->value = nflags;
      return;
    }

  /* When adding a variable-sized variable, we have to handle all sorts
     of additional bits of data: the pointer replacement variable, and 
     the parameters of the type.  */
  if (FUNC1 (decl) && FUNC5 (FUNC1 (decl)) != INTEGER_CST)
    {
      /* Add the pointer replacement variable as PRIVATE if the variable
	 replacement is private, else FIRSTPRIVATE since we'll need the
	 address of the original variable either for SHARED, or for the
	 copy into or out of the context.  */
      if (!(flags & GOVD_LOCAL))
	{
	  nflags = flags & GOVD_PRIVATE ? GOVD_PRIVATE : GOVD_FIRSTPRIVATE;
	  nflags |= flags & GOVD_SEEN;
	  t = FUNC3 (decl);
	  FUNC10 (FUNC5 (t) == INDIRECT_REF);
	  t = FUNC6 (t, 0);
	  FUNC10 (FUNC0 (t));
	  FUNC17 (ctx, t, nflags);
	}

      /* Add all of the variable and type parameters (which should have
	 been gimplified to a formal temporary) as FIRSTPRIVATE.  */
      FUNC12 (ctx, FUNC2 (decl));
      FUNC12 (ctx, FUNC1 (decl));
      FUNC11 (ctx, FUNC7 (decl));

      /* The variable-sized variable itself is never SHARED, only some form
	 of PRIVATE.  The sharing would take place via the pointer variable
	 which we remapped above.  */
      if (flags & GOVD_SHARED)
	flags = GOVD_PRIVATE | GOVD_DEBUG_PRIVATE
		| (flags & (GOVD_SEEN | GOVD_EXPLICIT));

      /* We're going to make use of the TYPE_SIZE_UNIT at least in the 
	 alloca statement we generate for the variable, so make sure it
	 is available.  This isn't automatically needed for the SHARED
	 case, since we won't be allocating local storage then.
	 For local variables TYPE_SIZE_UNIT might not be gimplified yet,
	 in this case omp_notice_variable will be called later
	 on when it is gimplified.  */
      else if (! (flags & GOVD_LOCAL))
	FUNC13 (ctx, FUNC9 (FUNC7 (decl)), true);
    }
  else if (lang_hooks.decls.omp_privatize_by_reference (decl))
    {
      FUNC10 ((flags & GOVD_LOCAL) == 0);
      FUNC11 (ctx, FUNC7 (decl));

      /* Similar to the direct variable sized case above, we'll need the
	 size of references being privatized.  */
      if ((flags & GOVD_SHARED) == 0)
	{
	  t = FUNC9 (FUNC7 (FUNC7 (decl)));
	  if (FUNC5 (t) != INTEGER_CST)
	    FUNC13 (ctx, t, true);
	}
    }

  FUNC14 (ctx->variables, (splay_tree_key)decl, flags);
}