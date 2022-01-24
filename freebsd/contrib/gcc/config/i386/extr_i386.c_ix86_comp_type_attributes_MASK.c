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
 scalar_t__ TARGET_RTD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (tree type1, tree type2)
{
  /* Check for mismatch of non-default calling convention.  */
  const char *const rtdstr = TARGET_RTD ? "cdecl" : "stdcall";

  if (FUNC0 (type1) != FUNCTION_TYPE)
    return 1;

  /* Check for mismatched fastcall/regparm types.  */
  if ((!FUNC3 ("fastcall", FUNC1 (type1))
       != !FUNC3 ("fastcall", FUNC1 (type2)))
      || (FUNC2 (type1, NULL)
	  != FUNC2 (type2, NULL)))
    return 0;

  /* Check for mismatched sseregparm types.  */
  if (!FUNC3 ("sseregparm", FUNC1 (type1))
      != !FUNC3 ("sseregparm", FUNC1 (type2)))
    return 0;

  /* Check for mismatched return types (cdecl vs stdcall).  */
  if (!FUNC3 (rtdstr, FUNC1 (type1))
      != !FUNC3 (rtdstr, FUNC1 (type2)))
    return 0;

  return 1;
}