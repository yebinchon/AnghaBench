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
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int NUM_REGS ; 
 int amd64_native_gregset32_num_regs ; 
 int amd64_native_gregset64_num_regs ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct gdbarch*) ; 
 struct gdbarch* FUNC2 (struct regcache*) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int,char const*) ; 

void
FUNC4 (struct regcache *regcache,
			     const void *gregs, int regnum)
{
  const char *regs = gregs;
  struct gdbarch *gdbarch = FUNC2 (regcache);
  int num_regs = amd64_native_gregset64_num_regs;
  int i;

  if (FUNC1 (gdbarch) == 32)
    num_regs = amd64_native_gregset32_num_regs;

  if (num_regs > NUM_REGS)
    num_regs = NUM_REGS;

  for (i = 0; i < num_regs; i++)
    {
      if (regnum == -1 || regnum == i)
	{
	  int offset = FUNC0 (i);

	  if (offset != -1)
	    FUNC3 (regcache, i, regs + offset);
	}
    }
}