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
 size_t BUILT_IN_STRLEN ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t const) ; 
 size_t FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC9 (tree arglist)
{
  if (!FUNC8 (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree s1 = FUNC1 (arglist), s2 = FUNC1 (FUNC0 (arglist));
      const char *p1 = FUNC4 (s1), *p2 = FUNC4 (s2);

      /* If both arguments are constants, evaluate at compile-time.  */
      if (p1 && p2)
	{
	  const size_t r = FUNC7 (p1, p2);
	  return FUNC6 (r);
	}

      /* If the first argument is "", return 0.  */
      if (p1 && *p1 == '\0')
	{
	  /* Evaluate and ignore argument s2 in case it has
	     side-effects.  */
	  return FUNC5 (integer_type_node,
				   integer_zero_node, s2);
	}

      /* If the second argument is "", return __builtin_strlen(s1).  */
      if (p2 && *p2 == '\0')
	{
	  tree newarglist = FUNC3 (NULL_TREE, s1),
	    fn = implicit_built_in_decls[BUILT_IN_STRLEN];

	  /* If the replacement _DECL isn't initialized, don't do the
	     transformation.  */
	  if (!fn)
	    return 0;

	  return FUNC2 (fn, newarglist);
	}
      return 0;
    }
}