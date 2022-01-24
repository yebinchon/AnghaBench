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
struct assign_parm_data_one {int partial; scalar_t__ nominal_mode; scalar_t__ passed_mode; int /*<<< orphan*/ * entry_parm; int /*<<< orphan*/  passed_type; int /*<<< orphan*/ * stack_parm; } ;
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int UNITS_PER_WORD ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13 (struct assign_parm_data_one *data)
{
  rtx entry_parm = data->entry_parm;
  rtx stack_parm = data->stack_parm;

  /* If this parm was passed part in regs and part in memory, pretend it
     arrived entirely in memory by pushing the register-part onto the stack.
     In the special case of a DImode or DFmode that is split, we could put
     it together in a pseudoreg directly, but for now that's not worth
     bothering with.  */
  if (data->partial != 0)
    {
      /* Handle calls that pass values in multiple non-contiguous
	 locations.  The Irix 6 ABI has examples of this.  */
      if (FUNC0 (entry_parm) == PARALLEL)
	FUNC8 (FUNC12 (stack_parm), entry_parm,
			  data->passed_type, 
			  FUNC10 (data->passed_type));
      else
	{
	  FUNC9 (data->partial % UNITS_PER_WORD == 0);
	  FUNC11 (FUNC3 (entry_parm), FUNC12 (stack_parm),
			       data->partial / UNITS_PER_WORD);
	}

      entry_parm = stack_parm;
    }

  /* If we didn't decide this parm came in a register, by default it came
     on the stack.  */
  else if (entry_parm == NULL)
    entry_parm = stack_parm;

  /* When an argument is passed in multiple locations, we can't make use
     of this information, but we can save some copying if the whole argument
     is passed in a single register.  */
  else if (FUNC0 (entry_parm) == PARALLEL
	   && data->nominal_mode != BLKmode
	   && data->passed_mode != BLKmode)
    {
      size_t i, len = FUNC7 (entry_parm, 0);

      for (i = 0; i < len; i++)
	if (FUNC5 (FUNC6 (entry_parm, 0, i), 0) != NULL_RTX
	    && FUNC4 (FUNC5 (FUNC6 (entry_parm, 0, i), 0))
	    && (FUNC1 (FUNC5 (FUNC6 (entry_parm, 0, i), 0))
		== data->passed_mode)
	    && FUNC2 (FUNC5 (FUNC6 (entry_parm, 0, i), 1)) == 0)
	  {
	    entry_parm = FUNC5 (FUNC6 (entry_parm, 0, i), 0);
	    break;
	  }
    }

  data->entry_parm = entry_parm;
}