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
struct task_struct {TYPE_1__* signal; } ;
struct rlimit {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;
struct TYPE_4__ {char* name; char* unit; } ;
struct TYPE_3__ {int /*<<< orphan*/  rlim; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int RLIM_NLIMITS ; 
 TYPE_2__* lnames ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct rlimit*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct task_struct *task, char *buffer)
{
	unsigned int i;
	int count = 0;
	unsigned long flags;
	char *bufptr = buffer;

	struct rlimit rlim[RLIM_NLIMITS];

	if (!FUNC0(task, &flags))
		return 0;
	FUNC1(rlim, task->signal->rlim, sizeof(struct rlimit) * RLIM_NLIMITS);
	FUNC3(task, &flags);

	/*
	 * print the file header
	 */
	count += FUNC2(&bufptr[count], "%-25s %-20s %-20s %-10s\n",
			"Limit", "Soft Limit", "Hard Limit", "Units");

	for (i = 0; i < RLIM_NLIMITS; i++) {
		if (rlim[i].rlim_cur == RLIM_INFINITY)
			count += FUNC2(&bufptr[count], "%-25s %-20s ",
					 lnames[i].name, "unlimited");
		else
			count += FUNC2(&bufptr[count], "%-25s %-20lu ",
					 lnames[i].name, rlim[i].rlim_cur);

		if (rlim[i].rlim_max == RLIM_INFINITY)
			count += FUNC2(&bufptr[count], "%-20s ", "unlimited");
		else
			count += FUNC2(&bufptr[count], "%-20lu ",
					 rlim[i].rlim_max);

		if (lnames[i].unit)
			count += FUNC2(&bufptr[count], "%-10s\n",
					 lnames[i].unit);
		else
			count += FUNC2(&bufptr[count], "\n");
	}

	return count;
}