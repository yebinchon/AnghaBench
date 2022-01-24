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
struct regset {int dummy; } ;
struct regcache {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int,void const*) ; 

__attribute__((used)) static void
FUNC2 (const struct regset *regset,
			   struct regcache *regcache, int regno,
			   const void *fpregs, size_t len)
{
  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
	{
	  if (FUNC0(regno))
	    FUNC1 (regcache, regno, fpregs);
	}
    }
  else
    if (FUNC0(regno))
      FUNC1 (regcache, regno, fpregs);
}