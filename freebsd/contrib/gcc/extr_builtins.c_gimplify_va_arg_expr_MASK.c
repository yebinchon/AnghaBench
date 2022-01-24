#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
struct TYPE_4__ {scalar_t__ (* type_promotes_to ) (scalar_t__) ;} ;
struct TYPE_6__ {TYPE_1__ types; } ;
struct TYPE_5__ {scalar_t__ (* gimplify_va_arg_expr ) (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;} ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 size_t BUILT_IN_TRAP ; 
 int GS_ALL_DONE ; 
 int GS_ERROR ; 
 int GS_OK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  fb_lvalue ; 
 int /*<<< orphan*/  fb_rvalue ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  is_gimple_min_lval ; 
 int /*<<< orphan*/  is_gimple_val ; 
 TYPE_3__ lang_hooks ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 TYPE_2__ targetm ; 
 scalar_t__ va_list_type_node ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

enum gimplify_status
FUNC16 (tree *expr_p, tree *pre_p, tree *post_p)
{
  tree promoted_type, want_va_type, have_va_type;
  tree valist = FUNC2 (*expr_p, 0);
  tree type = FUNC3 (*expr_p);
  tree t;

  /* Verify that valist is of the proper type.  */
  want_va_type = va_list_type_node;
  have_va_type = FUNC3 (valist);

  if (have_va_type == error_mark_node)
    return GS_ERROR;

  if (FUNC1 (want_va_type) == ARRAY_TYPE)
    {
      /* If va_list is an array type, the argument may have decayed
	 to a pointer type, e.g. by being passed to another function.
	 In that case, unwrap both types so that we can compare the
	 underlying records.  */
      if (FUNC1 (have_va_type) == ARRAY_TYPE
	  || FUNC0 (have_va_type))
	{
	  want_va_type = FUNC3 (want_va_type);
	  have_va_type = FUNC3 (have_va_type);
	}
    }

  if (FUNC4 (want_va_type) != FUNC4 (have_va_type))
    {
      FUNC10 ("first argument to %<va_arg%> not of type %<va_list%>");
      return GS_ERROR;
    }

  /* Generate a diagnostic for requesting data of a type that cannot
     be passed through `...' due to type promotion at the call site.  */
  else if ((promoted_type = lang_hooks.types.type_promotes_to (type))
	   != type)
    {
      static bool gave_help;

      /* Unfortunately, this is merely undefined, rather than a constraint
	 violation, so we cannot make this an error.  If this call is never
	 executed, the program is still strictly conforming.  */
      FUNC15 (0, "%qT is promoted to %qT when passed through %<...%>",
	       type, promoted_type);
      if (! gave_help)
	{
	  gave_help = true;
	  FUNC15 (0, "(so you should pass %qT not %qT to %<va_arg%>)",
		   promoted_type, type);
	}

      /* We can, however, treat "undefined" any way we please.
	 Call abort to encourage the user to fix the program.  */
      FUNC12 ("if this code is reached, the program will abort");
      t = FUNC7 (implicit_built_in_decls[BUILT_IN_TRAP],
				    NULL);
      FUNC5 (t, pre_p);

      /* This is dead code, but go ahead and finish so that the
	 mode of the result comes out right.  */
      *expr_p = FUNC9 (type);
      return GS_ALL_DONE;
    }
  else
    {
      /* Make it easier for the backends by protecting the valist argument
	 from multiple evaluations.  */
      if (FUNC1 (va_list_type_node) == ARRAY_TYPE)
	{
	  /* For this case, the backends will be expecting a pointer to
	     TREE_TYPE (va_list_type_node), but it's possible we've
	     actually been given an array (an actual va_list_type_node).
	     So fix it.  */
	  if (FUNC1 (FUNC3 (valist)) == ARRAY_TYPE)
	    {
	      tree p1 = FUNC8 (FUNC3 (va_list_type_node));
	      valist = FUNC6 (valist, p1);
	    }
	  FUNC11 (&valist, pre_p, post_p, is_gimple_val, fb_rvalue);
	}
      else
	FUNC11 (&valist, pre_p, post_p, is_gimple_min_lval, fb_lvalue);

      if (!targetm.gimplify_va_arg_expr)
	/* FIXME:Once most targets are converted we should merely
	   assert this is non-null.  */
	return GS_ALL_DONE;

      *expr_p = targetm.gimplify_va_arg_expr (valist, type, pre_p, post_p);
      return GS_OK;
    }
}