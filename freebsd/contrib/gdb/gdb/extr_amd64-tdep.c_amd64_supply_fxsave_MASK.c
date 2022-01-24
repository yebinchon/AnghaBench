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

/* Variables and functions */
 int I387_FISEG_REGNUM ; 
 int I387_FOSEG_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (struct regcache*,int,void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int,char const*) ; 

void
FUNC2 (struct regcache *regcache, int regnum,
		      const void *fxsave)
{
  FUNC0 (regcache, regnum, fxsave);

  if (fxsave)
    {
      const char *regs = fxsave;

      if (regnum == -1 || regnum == I387_FISEG_REGNUM)
	FUNC1 (regcache, I387_FISEG_REGNUM, regs + 12);
      if (regnum == -1 || regnum == I387_FOSEG_REGNUM)
	FUNC1 (regcache, I387_FOSEG_REGNUM, regs + 20);
    }
}