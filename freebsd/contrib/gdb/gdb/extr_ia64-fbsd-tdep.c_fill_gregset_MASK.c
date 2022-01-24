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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,void*) ; 

void
FUNC2 (void *gregs, int regno)
{
  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
	{
	  if (FUNC0(regno))
	    FUNC1 (current_regcache, regno, gregs);
	}
    }
  else
    {
      if (FUNC0(regno))
	FUNC1 (current_regcache, regno, gregs);
    }
}