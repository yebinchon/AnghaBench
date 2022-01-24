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
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 char* FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC12 (tree arglist, tree type)
{
  if (!FUNC11 (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree s1 = FUNC2 (arglist), s2 = FUNC2 (FUNC0 (arglist));
      tree fn;
      const char *p1, *p2;

      p2 = FUNC6 (s2);
      if (p2 == NULL)
	return 0;

      p1 = FUNC6 (s1);
      if (p1 != NULL)
	{
	  const char *r = FUNC9 (p1, p2);
	  tree tem;

	  if (r == NULL)
	    return FUNC4 (FUNC1 (s1), 0);

	  /* Return an offset into the constant string argument.  */
	  tem = FUNC7 (PLUS_EXPR, FUNC1 (s1),
			     s1, FUNC4 (FUNC1 (s1), r - p1));
	  return FUNC8 (type, tem);
	}

      /* The argument is const char *, and the result is char *, so we need
	 a type conversion here to avoid a warning.  */
      if (p2[0] == '\0')
	return FUNC8 (type, s1);

      if (p2[1] != '\0')
	return 0;

      fn = implicit_built_in_decls[BUILT_IN_STRCHR];
      if (!fn)
	return 0;

      /* New argument list transforming strstr(s1, s2) to
	 strchr(s1, s2[0]).  */
      arglist = FUNC5 (NULL_TREE,
				 FUNC4 (NULL_TREE, p2[0]));
      arglist = FUNC10 (NULL_TREE, s1, arglist);
      return FUNC3 (fn, arglist);
    }
}