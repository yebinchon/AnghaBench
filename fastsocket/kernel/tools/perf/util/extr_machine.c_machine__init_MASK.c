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
struct thread {int dummy; } ;
struct TYPE_2__ {struct machine* machine; } ;
struct machine {int /*<<< orphan*/ * root_dir; scalar_t__ pid; TYPE_1__ kmaps; int /*<<< orphan*/ * last_match; int /*<<< orphan*/  dead_threads; int /*<<< orphan*/  threads; int /*<<< orphan*/  kernel_dsos; int /*<<< orphan*/  user_dsos; int /*<<< orphan*/  rb_node; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  comm ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ HOST_KERNEL_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 struct thread* FUNC2 (struct machine*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,char*) ; 

int FUNC7(struct machine *machine, const char *root_dir, pid_t pid)
{
	FUNC3(&machine->kmaps);
	FUNC1(&machine->rb_node);
	FUNC0(&machine->user_dsos);
	FUNC0(&machine->kernel_dsos);

	machine->threads = RB_ROOT;
	FUNC0(&machine->dead_threads);
	machine->last_match = NULL;

	machine->kmaps.machine = machine;
	machine->pid = pid;

	machine->root_dir = FUNC5(root_dir);
	if (machine->root_dir == NULL)
		return -ENOMEM;

	if (pid != HOST_KERNEL_ID) {
		struct thread *thread = FUNC2(machine, pid);
		char comm[64];

		if (thread == NULL)
			return -ENOMEM;

		FUNC4(comm, sizeof(comm), "[guest/%d]", pid);
		FUNC6(thread, comm);
	}

	return 0;
}