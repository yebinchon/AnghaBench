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
 unsigned int FP0_REGNUM ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,char*) ; 

__attribute__((used)) static void
FUNC2 (char *gpregs)
{
  unsigned regno;
  int empty = 0;

  for (regno = 0; regno < FP0_REGNUM; regno++)
    {
      int offset = FUNC0 (regno);
      if (offset == -1)
	FUNC1 (regno, (char *) &empty);
      else
	FUNC1 (regno, gpregs + offset);
    }
}