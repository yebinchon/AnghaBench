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
 size_t BUILT_IN_STRCAT ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC13 (tree arglist)
{
  if (!FUNC12 (arglist,
			 POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree dst = FUNC3 (arglist);
      tree src = FUNC3 (FUNC0 (arglist));
      tree len = FUNC3 (FUNC0 (FUNC0 (arglist)));
      const char *p = FUNC6 (src);

      /* If the requested length is zero, or the src parameter string
	 length is zero, return the dst parameter.  */
      if (FUNC8 (len) || (p && *p == '\0'))
	return FUNC9 (FUNC2 (dst), dst, src, len);

      /* If the requested len is greater than or equal to the string
	 length, call strcat.  */
      if (FUNC1 (len) == INTEGER_CST && p
	  && FUNC7 (len, FUNC10 (p)) >= 0)
	{
	  tree newarglist
	    = FUNC11 (NULL_TREE, dst, FUNC5 (NULL_TREE, src));
	  tree fn = implicit_built_in_decls[BUILT_IN_STRCAT];

	  /* If the replacement _DECL isn't initialized, don't do the
	     transformation.  */
	  if (!fn)
	    return 0;

	  return FUNC4 (fn, newarglist);
	}
      return 0;
    }
}