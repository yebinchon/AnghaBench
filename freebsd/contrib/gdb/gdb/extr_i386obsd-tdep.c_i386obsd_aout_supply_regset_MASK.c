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
struct gdbarch_tdep {size_t sizeof_gregset; } ;

/* Variables and functions */
 size_t I387_SIZEOF_FSAVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regset const*,struct regcache*,int,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int,char*) ; 

__attribute__((used)) static void
FUNC3 (const struct regset *regset,
			     struct regcache *regcache, int regnum,
			     const void *regs, size_t len)
{
  const struct gdbarch_tdep *tdep = regset->descr;

  FUNC0 (len >= tdep->sizeof_gregset + I387_SIZEOF_FSAVE);

  FUNC1 (regset, regcache, regnum, regs, tdep->sizeof_gregset);
  FUNC2 (regcache, regnum, (char *) regs + tdep->sizeof_gregset);
}