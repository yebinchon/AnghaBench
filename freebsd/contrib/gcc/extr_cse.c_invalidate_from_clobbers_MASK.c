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
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTRACT ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (rtx x)
{
  if (FUNC0 (x) == CLOBBER)
    {
      rtx ref = FUNC4 (x, 0);
      if (ref)
	{
	  if (FUNC3 (ref) || FUNC0 (ref) == SUBREG
	      || FUNC2 (ref))
	    FUNC7 (ref, VOIDmode);
	  else if (FUNC0 (ref) == STRICT_LOW_PART
		   || FUNC0 (ref) == ZERO_EXTRACT)
	    FUNC7 (FUNC4 (ref, 0), FUNC1 (ref));
	}
    }
  else if (FUNC0 (x) == PARALLEL)
    {
      int i;
      for (i = FUNC6 (x, 0) - 1; i >= 0; i--)
	{
	  rtx y = FUNC5 (x, 0, i);
	  if (FUNC0 (y) == CLOBBER)
	    {
	      rtx ref = FUNC4 (y, 0);
	      if (FUNC3 (ref) || FUNC0 (ref) == SUBREG
		  || FUNC2 (ref))
		FUNC7 (ref, VOIDmode);
	      else if (FUNC0 (ref) == STRICT_LOW_PART
		       || FUNC0 (ref) == ZERO_EXTRACT)
		FUNC7 (FUNC4 (ref, 0), FUNC1 (ref));
	    }
	}
    }
}