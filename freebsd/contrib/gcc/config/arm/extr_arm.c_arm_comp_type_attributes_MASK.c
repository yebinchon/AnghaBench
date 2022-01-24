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
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (tree type1, tree type2)
{
  int l1, l2, s1, s2;

  /* Check for mismatch of non-default calling convention.  */
  if (FUNC0 (type1) != FUNCTION_TYPE)
    return 1;

  /* Check for mismatched call attributes.  */
  l1 = FUNC2 ("long_call", FUNC1 (type1)) != NULL;
  l2 = FUNC2 ("long_call", FUNC1 (type2)) != NULL;
  s1 = FUNC2 ("short_call", FUNC1 (type1)) != NULL;
  s2 = FUNC2 ("short_call", FUNC1 (type2)) != NULL;

  /* Only bother to check if an attribute is defined.  */
  if (l1 | l2 | s1 | s2)
    {
      /* If one type has an attribute, the other must have the same attribute.  */
      if ((l1 != l2) || (s1 != s2))
	return 0;

      /* Disallow mixed attributes.  */
      if ((l1 & s2) || (l2 & s1))
	return 0;
    }

  /* Check for mismatched ISR attribute.  */
  l1 = FUNC2 ("isr", FUNC1 (type1)) != NULL;
  if (! l1)
    l1 = FUNC2 ("interrupt", FUNC1 (type1)) != NULL;
  l2 = FUNC2 ("isr", FUNC1 (type2)) != NULL;
  if (! l2)
    l1 = FUNC2 ("interrupt", FUNC1 (type2)) != NULL;
  if (l1 != l2)
    return 0;

  return 1;
}