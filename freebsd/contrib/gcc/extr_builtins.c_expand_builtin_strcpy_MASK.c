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
 scalar_t__ COMPOUND_EXPR ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC8 (tree fndecl, tree arglist, rtx target, enum machine_mode mode)
{
  if (FUNC7 (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    {
      tree result = FUNC6 (fndecl, arglist, 0);
      if (result)
	{
	  while (FUNC1 (result) == COMPOUND_EXPR)
	    {
	      FUNC4 (FUNC2 (result, 0), const0_rtx, VOIDmode,
			   EXPAND_NORMAL);
	      result = FUNC2 (result, 1);
	    }
	  return FUNC4 (result, target, mode, EXPAND_NORMAL);
	}

      return FUNC5 (FUNC3 (arglist),
			    FUNC3 (FUNC0 (arglist)),
			    target, /*endp=*/0);
    }
  return 0;
}