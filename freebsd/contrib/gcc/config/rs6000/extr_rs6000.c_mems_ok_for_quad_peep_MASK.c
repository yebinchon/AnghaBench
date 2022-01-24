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
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int
FUNC5 (rtx mem1, rtx mem2)
{
  rtx addr1, addr2;
  unsigned int reg1, reg2;
  int offset1, offset2;

  /* The mems cannot be volatile.  */
  if (FUNC2 (mem1) || FUNC2 (mem2))
    return 0;

  addr1 = FUNC4 (mem1, 0);
  addr2 = FUNC4 (mem2, 0);

  /* Extract an offset (if used) from the first addr.  */
  if (FUNC0 (addr1) == PLUS)
    {
      /* If not a REG, return zero.  */
      if (FUNC0 (FUNC4 (addr1, 0)) != REG)
	return 0;
      else
	{
	  reg1 = FUNC3 (FUNC4 (addr1, 0));
	  /* The offset must be constant!  */
	  if (FUNC0 (FUNC4 (addr1, 1)) != CONST_INT)
	    return 0;
	  offset1 = FUNC1 (FUNC4 (addr1, 1));
	}
    }
  else if (FUNC0 (addr1) != REG)
    return 0;
  else
    {
      reg1 = FUNC3 (addr1);
      /* This was a simple (mem (reg)) expression.  Offset is 0.  */
      offset1 = 0;
    }

  /* And now for the second addr.  */
  if (FUNC0 (addr2) == PLUS)
    {
      /* If not a REG, return zero.  */
      if (FUNC0 (FUNC4 (addr2, 0)) != REG)
	return 0;
      else
	{
	  reg2 = FUNC3 (FUNC4 (addr2, 0));
	  /* The offset must be constant. */
	  if (FUNC0 (FUNC4 (addr2, 1)) != CONST_INT)
	    return 0;
	  offset2 = FUNC1 (FUNC4 (addr2, 1));
	}
    }
  else if (FUNC0 (addr2) != REG)
    return 0;
  else
    {
      reg2 = FUNC3 (addr2);
      /* This was a simple (mem (reg)) expression.  Offset is 0.  */
      offset2 = 0;
    }

  /* Both of these must have the same base register.  */
  if (reg1 != reg2)
    return 0;

  /* The offset for the second addr must be 8 more than the first addr.  */
  if (offset2 != offset1 + 8)
    return 0;

  /* All the tests passed.  addr1 and addr2 are valid for lfq or stfq
     instructions.  */
  return 1;
}