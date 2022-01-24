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
struct gdbarch_tdep {size_t sizeof_fpregset; } ;

/* Variables and functions */
 size_t I387_SIZEOF_FXSAVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int,void const*) ; 

__attribute__((used)) static void
FUNC3 (const struct regset *regset, struct regcache *regcache,
		      int regnum, const void *fpregs, size_t len)
{
  const struct gdbarch_tdep *tdep = regset->descr;

  if (len == I387_SIZEOF_FXSAVE)
    {
      FUNC2 (regcache, regnum, fpregs);
      return;
    }

  FUNC0 (len == tdep->sizeof_fpregset);
  FUNC1 (regcache, regnum, fpregs);
}