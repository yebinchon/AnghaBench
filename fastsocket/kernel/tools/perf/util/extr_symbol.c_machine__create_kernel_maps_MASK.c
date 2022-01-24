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
struct machine {int /*<<< orphan*/  kmaps; int /*<<< orphan*/  pid; } ;
struct dso {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_modules; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct machine*,struct dso*) ; 
 scalar_t__ FUNC1 (struct machine*) ; 
 struct dso* FUNC2 (struct machine*) ; 
 scalar_t__ FUNC3 (struct machine*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_1__ symbol_conf ; 

int FUNC6(struct machine *machine)
{
	struct dso *kernel = FUNC2(machine);

	if (kernel == NULL ||
	    FUNC0(machine, kernel) < 0)
		return -1;

	if (symbol_conf.use_modules && FUNC1(machine) < 0) {
		if (FUNC3(machine))
			FUNC5("Problems creating module maps, "
				 "continuing anyway...\n");
		else
			FUNC5("Problems creating module maps for guest %d, "
				 "continuing anyway...\n", machine->pid);
	}

	/*
	 * Now that we have all the maps created, just set the ->end of them:
	 */
	FUNC4(&machine->kmaps);
	return 0;
}