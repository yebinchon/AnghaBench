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
 scalar_t__ ADDR_EXPR ; 
 int /*<<< orphan*/  OPT_Wwrite_strings ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ STRING_CST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_QUAL_CONST ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  char_type_node ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wchar_type_node ; 

int
FUNC9 (tree totype, tree exp, int warn)
{
  tree t;

  if (FUNC1 (totype) != POINTER_TYPE)
    return 0;

  t = FUNC3 (totype);
  if (!FUNC7 (t, char_type_node)
      && !FUNC7 (t, wchar_type_node))
    return 0;

  if (FUNC1 (exp) == STRING_CST)
    {
      /* Make sure that we don't try to convert between char and wchar_t.  */
      if (!FUNC7 (FUNC4 (FUNC3 (FUNC3 (exp))), t))
	return 0;
    }
  else
    {
      /* Is this a string constant which has decayed to 'const char *'?  */
      t = FUNC5 (FUNC6 (t, TYPE_QUAL_CONST));
      if (!FUNC7 (FUNC3 (exp), t))
	return 0;
      FUNC0 (exp);
      if (FUNC1 (exp) != ADDR_EXPR
	  || FUNC1 (FUNC2 (exp, 0)) != STRING_CST)
	return 0;
    }

  /* This warning is not very useful, as it complains about printf.  */
  if (warn)
    FUNC8 (OPT_Wwrite_strings,
	     "deprecated conversion from string constant to %qT",
	     totype);

  return 1;
}