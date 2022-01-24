#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regcache {TYPE_1__* descr; scalar_t__* register_valid_p; scalar_t__ readonly_p; } ;
struct TYPE_2__ {int nr_cooked_registers; int nr_raw_registers; int /*<<< orphan*/  gdbarch; int /*<<< orphan*/ * sizeof_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct regcache*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct regcache*,int) ; 

void
FUNC5 (struct regcache *regcache, int regnum, void *buf)
{
  FUNC0 (regnum >= 0);
  FUNC0 (regnum < regcache->descr->nr_cooked_registers);
  if (regnum < regcache->descr->nr_raw_registers)
    FUNC3 (regcache, regnum, buf);
  else if (regcache->readonly_p
	   && regnum < regcache->descr->nr_cooked_registers
	   && regcache->register_valid_p[regnum])
    /* Read-only register cache, perhaphs the cooked value was cached?  */
    FUNC2 (buf, FUNC4 (regcache, regnum),
	    regcache->descr->sizeof_register[regnum]);
  else
    FUNC1 (regcache->descr->gdbarch, regcache,
				  regnum, buf);
}