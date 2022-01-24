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
typedef  int /*<<< orphan*/  uintmax_t ;
struct probe_finder {scalar_t__ addr; TYPE_1__* pev; } ;
struct perf_probe_point {scalar_t__ offset; scalar_t__ lazy_line; } ;
struct TYPE_2__ {struct perf_probe_point point; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Dwarf_Die *in_die, void *data)
{
	struct probe_finder *pf = data;
	struct perf_probe_point *pp = &pf->pev->point;
	Dwarf_Addr addr;
	int ret;

	if (pp->lazy_line)
		ret = FUNC3(in_die, pf);
	else {
		/* Get probe address */
		if (FUNC2(in_die, &addr) != 0) {
			FUNC5("Failed to get entry address of %s.\n",
				   FUNC1(in_die));
			return -ENOENT;
		}
		pf->addr = addr;
		pf->addr += pp->offset;
		FUNC4("found inline addr: 0x%jx\n",
			 (uintmax_t)pf->addr);

		ret = FUNC0(in_die, pf);
	}

	return ret;
}