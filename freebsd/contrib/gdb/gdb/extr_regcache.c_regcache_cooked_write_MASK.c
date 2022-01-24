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
struct regcache {TYPE_1__* descr; } ;
struct TYPE_2__ {int nr_cooked_registers; int nr_raw_registers; int /*<<< orphan*/  gdbarch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct regcache*,int,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int,void const*) ; 

void
FUNC3 (struct regcache *regcache, int regnum, const void *buf)
{
  FUNC0 (regnum >= 0);
  FUNC0 (regnum < regcache->descr->nr_cooked_registers);
  if (regnum < regcache->descr->nr_raw_registers)
    FUNC2 (regcache, regnum, buf);
  else
    FUNC1 (regcache->descr->gdbarch, regcache,
				   regnum, buf);
}