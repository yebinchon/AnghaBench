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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 size_t BUILT_IN_STRCHR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*,char) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC13 (tree arglist, tree type)
{
  if (!FUNC12 (arglist, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree s1 = FUNC3 (arglist), s2 = FUNC3 (FUNC0 (arglist));
      tree fn;
      const char *p1;

      if (FUNC1 (s2) != INTEGER_CST)
	return 0;

      p1 = FUNC6 (s1);
      if (p1 != NULL)
	{
	  char c;
	  const char *r;
	  tree tem;

	  if (FUNC11 (s2, &c))
	    return 0;

	  r = FUNC10 (p1, c);

	  if (r == NULL)
	    return FUNC5 (FUNC2 (s1), 0);

	  /* Return an offset into the constant string argument.  */
	  tem = FUNC7 (PLUS_EXPR, FUNC2 (s1),
			     s1, FUNC5 (FUNC2 (s1), r - p1));
	  return FUNC8 (type, tem);
	}

      if (! FUNC9 (s2))
	return 0;

      fn = implicit_built_in_decls[BUILT_IN_STRCHR];
      if (!fn)
	return 0;

      /* Transform strrchr(s1, '\0') to strchr(s1, '\0').  */
      return FUNC4 (fn, arglist);
    }
}