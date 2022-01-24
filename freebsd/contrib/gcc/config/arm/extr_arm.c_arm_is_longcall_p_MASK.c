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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int CALL_LONG ; 
 int CALL_SHORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ TARGET_LONG_CALLS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ flag_function_sections ; 

int
FUNC6 (rtx sym_ref, int call_cookie, int call_symbol)
{
  if (!call_symbol)
    {
      if (FUNC2 (sym_ref) != MEM)
	return 0;

      sym_ref = FUNC3 (sym_ref, 0);
    }

  if (FUNC2 (sym_ref) != SYMBOL_REF)
    return 0;

  if (call_cookie & CALL_SHORT)
    return 0;

  if (TARGET_LONG_CALLS)
    {
      if (flag_function_sections
	  || FUNC0 (current_function_decl))
	/* c.3 is handled by the definition of the
	   ARM_DECLARE_FUNCTION_SIZE macro.  */
	return 1;
    }

  if (FUNC5 (sym_ref))
    return 0;

  return (call_cookie & CALL_LONG)
    || FUNC1 (FUNC4 (sym_ref, 0))
    || TARGET_LONG_CALLS;
}