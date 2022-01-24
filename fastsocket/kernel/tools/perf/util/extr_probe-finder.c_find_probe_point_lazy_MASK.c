#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct probe_finder {TYPE_2__* pev; int /*<<< orphan*/  fname; int /*<<< orphan*/  lcache; } ;
struct TYPE_3__ {int /*<<< orphan*/  lazy_line; } ;
struct TYPE_4__ {TYPE_1__ point; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct probe_finder*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  probe_point_lazy_walker ; 

__attribute__((used)) static int FUNC3(Dwarf_Die *sp_die, struct probe_finder *pf)
{
	int ret = 0;

	if (FUNC2(&pf->lcache)) {
		/* Matching lazy line pattern */
		ret = FUNC1(&pf->lcache, pf->fname,
					    pf->pev->point.lazy_line);
		if (ret <= 0)
			return ret;
	}

	return FUNC0(sp_die, probe_point_lazy_walker, pf);
}