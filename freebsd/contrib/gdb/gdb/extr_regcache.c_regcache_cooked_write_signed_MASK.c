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
struct TYPE_2__ {int nr_cooked_registers; int /*<<< orphan*/ * sizeof_register; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4 (struct regcache *regcache, int regnum,
			      LONGEST val)
{
  void *buf;
  FUNC1 (regcache != NULL);
  FUNC1 (regnum >=0 && regnum < regcache->descr->nr_cooked_registers);
  buf = FUNC0 (regcache->descr->sizeof_register[regnum]);
  FUNC3 (buf, regcache->descr->sizeof_register[regnum], val);
  FUNC2 (regcache, regnum, buf);
}