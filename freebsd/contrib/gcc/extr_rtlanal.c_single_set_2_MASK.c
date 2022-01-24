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
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
#define  CLOBBER 130 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  REG_UNUSED ; 
#define  SET 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  USE 128 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

rtx
FUNC6 (rtx insn, rtx pat)
{
  rtx set = NULL;
  int set_verified = 1;
  int i;

  if (FUNC0 (pat) == PARALLEL)
    {
      for (i = 0; i < FUNC3 (pat, 0); i++)
	{
	  rtx sub = FUNC2 (pat, 0, i);
	  switch (FUNC0 (sub))
	    {
	    case USE:
	    case CLOBBER:
	      break;

	    case SET:
	      /* We can consider insns having multiple sets, where all
		 but one are dead as single set insns.  In common case
		 only single set is present in the pattern so we want
		 to avoid checking for REG_UNUSED notes unless necessary.

		 When we reach set first time, we just expect this is
		 the single set we are looking for and only when more
		 sets are found in the insn, we check them.  */
	      if (!set_verified)
		{
		  if (FUNC4 (insn, REG_UNUSED, FUNC1 (set))
		      && !FUNC5 (set))
		    set = NULL;
		  else
		    set_verified = 1;
		}
	      if (!set)
		set = sub, set_verified = 0;
	      else if (!FUNC4 (insn, REG_UNUSED, FUNC1 (sub))
		       || FUNC5 (sub))
		return NULL_RTX;
	      break;

	    default:
	      return NULL_RTX;
	    }
	}
    }
  return set;
}