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
struct regset {struct gdbarch_tdep* descr; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {size_t sizeof_gregset; int gregset_num_regs; int* gregset_reg_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int,char const*) ; 

void
FUNC2 (const struct regset *regset, struct regcache *regcache,
		     int regnum, const void *gregs, size_t len)
{
  const struct gdbarch_tdep *tdep = regset->descr;
  const char *regs = gregs;
  int i;

  FUNC0 (len == tdep->sizeof_gregset);

  for (i = 0; i < tdep->gregset_num_regs; i++)
    {
      if ((regnum == i || regnum == -1)
	  && tdep->gregset_reg_offset[i] != -1)
	FUNC1 (regcache, i, regs + tdep->gregset_reg_offset[i]);
    }
}