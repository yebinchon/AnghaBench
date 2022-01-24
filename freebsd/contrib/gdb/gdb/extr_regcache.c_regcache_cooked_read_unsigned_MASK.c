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
typedef  int /*<<< orphan*/  ULONGEST ;
struct TYPE_2__ {int nr_cooked_registers; int /*<<< orphan*/ * sizeof_register; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int,char*) ; 

void
FUNC4 (struct regcache *regcache, int regnum,
			       ULONGEST *val)
{
  char *buf;
  FUNC2 (regcache != NULL);
  FUNC2 (regnum >= 0 && regnum < regcache->descr->nr_cooked_registers);
  buf = FUNC0 (regcache->descr->sizeof_register[regnum]);
  FUNC3 (regcache, regnum, buf);
  (*val) = FUNC1 (buf,
				     regcache->descr->sizeof_register[regnum]);
}