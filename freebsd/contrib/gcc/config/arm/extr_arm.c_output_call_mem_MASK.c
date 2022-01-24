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
 int /*<<< orphan*/  LR_REGNUM ; 
 scalar_t__ TARGET_INTERWORK ; 
 scalar_t__ arm_arch4t ; 
 scalar_t__ arm_arch5 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC2 (rtx *operands)
{
  if (TARGET_INTERWORK && !arm_arch5)
    {
      FUNC0 ("ldr%?\t%|ip, %0", operands);
      FUNC0 ("mov%?\t%|lr, %|pc", operands);
      FUNC0 ("bx%?\t%|ip", operands);
    }
  else if (FUNC1 (LR_REGNUM, operands[0]))
    {
      /* LR is used in the memory address.  We load the address in the
	 first instruction.  It's safe to use IP as the target of the
	 load since the call will kill it anyway.  */
      FUNC0 ("ldr%?\t%|ip, %0", operands);
      if (arm_arch5)
	FUNC0 ("blx%?\t%|ip", operands);
      else
	{
	  FUNC0 ("mov%?\t%|lr, %|pc", operands);
	  if (arm_arch4t)
	    FUNC0 ("bx%?\t%|ip", operands);
	  else
	    FUNC0 ("mov%?\t%|pc, %|ip", operands);
	}
    }
  else
    {
      FUNC0 ("mov%?\t%|lr, %|pc", operands);
      FUNC0 ("ldr%?\t%|pc, %0", operands);
    }

  return "";
}