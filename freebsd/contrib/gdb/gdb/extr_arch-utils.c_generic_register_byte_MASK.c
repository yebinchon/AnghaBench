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
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

int
FUNC2 (int regnum)
{
  int byte;
  int i;
  FUNC0 (regnum >= 0 && regnum < NUM_REGS + NUM_PSEUDO_REGS);
  byte = 0;
  for (i = 0; i < regnum; i++)
    {
      byte += FUNC1 (i);
    }
  return byte;
}