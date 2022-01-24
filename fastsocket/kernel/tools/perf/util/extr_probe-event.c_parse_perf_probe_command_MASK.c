#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ retprobe; } ;
struct perf_probe_event {int nargs; TYPE_1__ point; TYPE_2__* args; } ;
struct perf_probe_arg {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 int MAX_PROBE_ARGS ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char const*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,TYPE_2__*) ; 
 int FUNC4 (char*,struct perf_probe_event*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_2__* FUNC7 (int) ; 

int FUNC8(const char *cmd, struct perf_probe_event *pev)
{
	char **argv;
	int argc, i, ret = 0;

	argv = FUNC1(cmd, &argc);
	if (!argv) {
		FUNC5("Failed to split arguments.\n");
		return -ENOMEM;
	}
	if (argc - 1 > MAX_PROBE_ARGS) {
		FUNC6("Too many probe arguments (%d).\n", argc - 1);
		ret = -ERANGE;
		goto out;
	}
	/* Parse probe point */
	ret = FUNC4(argv[0], pev);
	if (ret < 0)
		goto out;

	/* Copy arguments and ensure return probe has no C argument */
	pev->nargs = argc - 1;
	pev->args = FUNC7(sizeof(struct perf_probe_arg) * pev->nargs);
	if (pev->args == NULL) {
		ret = -ENOMEM;
		goto out;
	}
	for (i = 0; i < pev->nargs && ret >= 0; i++) {
		ret = FUNC3(argv[i + 1], &pev->args[i]);
		if (ret >= 0 &&
		    FUNC2(pev->args[i].var) && pev->point.retprobe) {
			FUNC6("You can't specify local variable for"
				       " kretprobe.\n");
			ret = -EINVAL;
		}
	}
out:
	FUNC0(argv);

	return ret;
}