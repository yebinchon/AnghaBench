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
struct perf_probe_event {int nargs; int /*<<< orphan*/ * args; int /*<<< orphan*/  event; int /*<<< orphan*/  group; int /*<<< orphan*/  point; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct perf_probe_event *pev)
{
	int i, ret;
	char buf[128];
	char *place;

	/* Synthesize only event probe point */
	place = FUNC4(&pev->point);
	if (!place)
		return -EINVAL;

	ret = FUNC0(buf, 128, "%s:%s", pev->group, pev->event);
	if (ret < 0)
		return ret;

	FUNC2("  %-20s (on %s", buf, place);

	if (pev->nargs > 0) {
		FUNC2(" with");
		for (i = 0; i < pev->nargs; i++) {
			ret = FUNC3(&pev->args[i],
							buf, 128);
			if (ret < 0)
				break;
			FUNC2(" %s", buf);
		}
	}
	FUNC2(")\n");
	FUNC1(place);
	return ret;
}