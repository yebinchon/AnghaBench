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
struct probe_trace_event {char* event; char* group; int nargs; TYPE_2__* args; int /*<<< orphan*/  point; } ;
struct perf_probe_event {int nargs; TYPE_1__* args; int /*<<< orphan*/  point; int /*<<< orphan*/ * group; int /*<<< orphan*/ * event; } ;
struct perf_probe_arg {int dummy; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct perf_probe_event*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (char*) ; 
 int FUNC4 (TYPE_2__*,char*,int) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct probe_trace_event *tev,
			       struct perf_probe_event *pev, bool is_kprobe)
{
	char buf[64] = "";
	int i, ret;

	/* Convert event/group name */
	pev->event = FUNC3(tev->event);
	pev->group = FUNC3(tev->group);
	if (pev->event == NULL || pev->group == NULL)
		return -ENOMEM;

	/* Convert trace_point to probe_point */
	if (is_kprobe)
		ret = FUNC2(&tev->point, &pev->point);
	else
		ret = FUNC1(&tev->point, &pev->point);

	if (ret < 0)
		return ret;

	/* Convert trace_arg to probe_arg */
	pev->nargs = tev->nargs;
	pev->args = FUNC5(sizeof(struct perf_probe_arg) * pev->nargs);
	if (pev->args == NULL)
		return -ENOMEM;
	for (i = 0; i < tev->nargs && ret >= 0; i++) {
		if (tev->args[i].name)
			pev->args[i].name = FUNC3(tev->args[i].name);
		else {
			ret = FUNC4(&tev->args[i],
							  buf, 64);
			pev->args[i].name = FUNC3(buf);
		}
		if (pev->args[i].name == NULL && ret >= 0)
			ret = -ENOMEM;
	}

	if (ret < 0)
		FUNC0(pev);

	return ret;
}