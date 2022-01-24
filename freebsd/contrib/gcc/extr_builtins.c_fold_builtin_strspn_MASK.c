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
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t const) ; 
 size_t FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC7 (tree arglist)
{
  if (!FUNC6 (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree s1 = FUNC1 (arglist), s2 = FUNC1 (FUNC0 (arglist));
      const char *p1 = FUNC2 (s1), *p2 = FUNC2 (s2);

      /* If both arguments are constants, evaluate at compile-time.  */
      if (p1 && p2)
	{
	  const size_t r = FUNC5 (p1, p2);
	  return FUNC4 (r);
	}

      /* If either argument is "", return 0.  */
      if ((p1 && *p1 == '\0') || (p2 && *p2 == '\0'))
	/* Evaluate and ignore both arguments in case either one has
	   side-effects.  */
	return FUNC3 (integer_type_node, integer_zero_node,
				  s1, s2);
      return 0;
    }
}