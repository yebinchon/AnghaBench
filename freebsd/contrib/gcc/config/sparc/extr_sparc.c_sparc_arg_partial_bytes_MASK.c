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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  CUMULATIVE_ARGS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int BLKmode ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ MODE_COMPLEX_FLOAT ; 
 scalar_t__ MODE_COMPLEX_INT ; 
 int FUNC3 (int) ; 
 int SPARC_FP_ARG_MAX ; 
 int SPARC_INT_ARG_MAX ; 
 scalar_t__ TARGET_ARCH32 ; 
 scalar_t__ TARGET_FPU ; 
 int UNITS_PER_WORD ; 
 int FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,int,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (CUMULATIVE_ARGS *cum, enum machine_mode mode,
			 tree type, bool named)
{
  int slotno, regno, padding;

  /* We pass 0 for incoming_p here, it doesn't matter.  */
  slotno = FUNC4 (cum, mode, type, named, 0, &regno, &padding);

  if (slotno == -1)
    return 0;

  if (TARGET_ARCH32)
    {
      if ((slotno + (mode == BLKmode
		     ? FUNC3 (FUNC5 (type))
		     : FUNC3 (FUNC2 (mode))))
	  > SPARC_INT_ARG_MAX)
	return (SPARC_INT_ARG_MAX - slotno) * UNITS_PER_WORD;
    }
  else
    {
      /* We are guaranteed by pass_by_reference that the size of the
	 argument is not greater than 16 bytes, so we only need to return
	 one word if the argument is partially passed in registers.  */

      if (type && FUNC0 (type))
	{
	  int size = FUNC5 (type);

	  if (size > UNITS_PER_WORD
	      && slotno == SPARC_INT_ARG_MAX - 1)
	    return UNITS_PER_WORD;
	}
      else if (FUNC1 (mode) == MODE_COMPLEX_INT
	       || (FUNC1 (mode) == MODE_COMPLEX_FLOAT
		   && ! (TARGET_FPU && named)))
	{
	  /* The complex types are passed as packed types.  */
	  if (FUNC2 (mode) > UNITS_PER_WORD
	      && slotno == SPARC_INT_ARG_MAX - 1)
	    return UNITS_PER_WORD;
	}
      else if (FUNC1 (mode) == MODE_COMPLEX_FLOAT)
	{
	  if ((slotno + FUNC2 (mode) / UNITS_PER_WORD)
	      > SPARC_FP_ARG_MAX)
	    return UNITS_PER_WORD;
	}
    }

  return 0;
}