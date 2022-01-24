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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ arm_ld_sched ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ optimize_size ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7 (rtx a, rtx b)
{
  /* We don't guarantee to preserve the order of these memory refs.  */
  if (FUNC6 (a) || FUNC6 (b))
    return 0;

  if ((FUNC0 (FUNC3 (a, 0)) == REG
       || (FUNC0 (FUNC3 (a, 0)) == PLUS
	   && FUNC0 (FUNC3 (FUNC3 (a, 0), 1)) == CONST_INT))
      && (FUNC0 (FUNC3 (b, 0)) == REG
	  || (FUNC0 (FUNC3 (b, 0)) == PLUS
	      && FUNC0 (FUNC3 (FUNC3 (b, 0), 1)) == CONST_INT)))
    {
      HOST_WIDE_INT val0 = 0, val1 = 0;
      rtx reg0, reg1;
      int val_diff;

      if (FUNC0 (FUNC3 (a, 0)) == PLUS)
        {
	  reg0 = FUNC3 (FUNC3 (a, 0), 0);
	  val0 = FUNC1 (FUNC3 (FUNC3 (a, 0), 1));
        }
      else
	reg0 = FUNC3 (a, 0);

      if (FUNC0 (FUNC3 (b, 0)) == PLUS)
        {
	  reg1 = FUNC3 (FUNC3 (b, 0), 0);
	  val1 = FUNC1 (FUNC3 (FUNC3 (b, 0), 1));
        }
      else
	reg1 = FUNC3 (b, 0);

      /* Don't accept any offset that will require multiple
	 instructions to handle, since this would cause the
	 arith_adjacentmem pattern to output an overlong sequence.  */
      if (!FUNC5 (PLUS, val0) || !FUNC5 (PLUS, val1))
	return 0;

      /* Don't allow an eliminable register: register elimination can make
	 the offset too large.  */
      if (FUNC4 (reg0))
	return 0;

      val_diff = val1 - val0;

      if (arm_ld_sched)
	{
	  /* If the target has load delay slots, then there's no benefit
	     to using an ldm instruction unless the offset is zero and
	     we are optimizing for size.  */
	  return (optimize_size && (FUNC2 (reg0) == FUNC2 (reg1))
		  && (val0 == 0 || val1 == 0 || val0 == 4 || val1 == 4)
		  && (val_diff == 4 || val_diff == -4));
	}

      return ((FUNC2 (reg0) == FUNC2 (reg1))
	      && (val_diff == 4 || val_diff == -4));
    }

  return 0;
}