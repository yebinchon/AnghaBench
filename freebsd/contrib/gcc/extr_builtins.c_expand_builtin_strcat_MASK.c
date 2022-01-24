#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 size_t BUILT_IN_STRLEN ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__* implicit_built_in_decls ; 
 int /*<<< orphan*/  optimize_size ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC17 (tree fndecl, tree arglist, rtx target, enum machine_mode mode)
{
  if (!FUNC16 (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree dst = FUNC2 (arglist),
      src = FUNC2 (FUNC0 (arglist));
      const char *p = FUNC6 (src);

      /* If the string length is zero, return the dst parameter.  */
      if (p && *p == '\0')
	return FUNC10 (dst, target, mode, EXPAND_NORMAL);

      if (!optimize_size)
	{
	  /* See if we can store by pieces into (dst + strlen(dst)).  */
	  tree newsrc, newdst,
	    strlen_fn = implicit_built_in_decls[BUILT_IN_STRLEN];
	  rtx insns;

	  /* Stabilize the argument list.  */
	  newsrc = FUNC5 (src);
	  if (newsrc != src)
	    arglist = FUNC4 (NULL_TREE, newsrc);
	  else
	    arglist = FUNC0 (arglist); /* Reusing arglist if safe.  */

	  dst = FUNC5 (dst);

	  FUNC14 ();

	  /* Create strlen (dst).  */
	  newdst =
	    FUNC3 (strlen_fn,
				      FUNC4 (NULL_TREE, dst));
	  /* Create (dst + (cast) strlen (dst)).  */
	  newdst = FUNC12 (FUNC1 (dst), newdst);
	  newdst = FUNC11 (PLUS_EXPR, FUNC1 (dst), dst, newdst);

	  newdst = FUNC5 (newdst);
	  arglist = FUNC15 (NULL_TREE, newdst, arglist);

	  if (!FUNC9 (fndecl, arglist, target, mode))
	    {
	      FUNC8 (); /* Stop sequence.  */
	      return 0;
	    }

	  /* Output the entire sequence.  */
	  insns = FUNC13 ();
	  FUNC8 ();
	  FUNC7 (insns);

	  return FUNC10 (dst, target, mode, EXPAND_NORMAL);
	}

      return 0;
    }
}