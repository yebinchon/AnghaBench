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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,unsigned int) ; 

__attribute__((used)) static bool
FUNC5 (rtx dest, unsigned int test_regno)
{
  if (FUNC0 (dest) == PARALLEL)
    {
      /* Some targets place small structures in registers for return
	 values of functions, and those registers are wrapped in
	 PARALLELs that we may see as the destination of a SET.  */
      int i;

      for (i = FUNC3 (dest, 0) - 1; i >= 0; i--)
	{
	  rtx inner = FUNC1 (FUNC2 (dest, 0, i), 0);
	  if (inner != NULL_RTX
	      && FUNC4 (inner, test_regno))
	    return true;
	}

      return false;
    }
  else
    return FUNC4 (dest, test_regno);
}