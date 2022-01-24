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
struct readelf {int /*<<< orphan*/  v_dumpop; } ;
struct TYPE_2__ {size_t si; char const* sn; } ;
struct dumpop {int type; int op; TYPE_1__ u; } ;

/* Variables and functions */
 int DUMP_BY_INDEX ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dumpop*,int /*<<< orphan*/ ) ; 
 struct dumpop* FUNC1 (int,int) ; 
 int /*<<< orphan*/  dumpop_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct dumpop* FUNC3 (struct readelf*,size_t,char const*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct readelf *re, size_t si, const char *sn, int op, int t)
{
	struct dumpop *d;

	if ((d = FUNC3(re, si, sn, -1, t)) == NULL) {
		if ((d = FUNC1(1, sizeof(*d))) == NULL)
			FUNC2(EXIT_FAILURE, "calloc failed");
		if (t == DUMP_BY_INDEX)
			d->u.si = si;
		else
			d->u.sn = sn;
		d->type = t;
		d->op = op;
		FUNC0(&re->v_dumpop, d, dumpop_list);
	} else
		d->op |= op;
}