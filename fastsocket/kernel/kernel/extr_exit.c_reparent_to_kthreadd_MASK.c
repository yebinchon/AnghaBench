#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  usage; } ;
struct TYPE_15__ {TYPE_2__* signal; } ;
struct TYPE_14__ {int /*<<< orphan*/  children; } ;
struct TYPE_13__ {TYPE_1__* signal; int /*<<< orphan*/  exit_signal; TYPE_6__* real_parent; int /*<<< orphan*/  sibling; TYPE_6__* parent; } ;
struct TYPE_12__ {int /*<<< orphan*/  rlim; } ;
struct TYPE_11__ {int /*<<< orphan*/  rlim; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 TYPE_3__* current ; 
 TYPE_8__ init_cred ; 
 TYPE_7__ init_task ; 
 TYPE_6__* kthreadd_task ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
	FUNC7(&tasklist_lock);

	FUNC4(current);
	/* Reparent to init */
	current->real_parent = current->parent = kthreadd_task;
	FUNC2(&current->sibling, &current->real_parent->children);

	/* Set the exit signal to SIGCHLD so we signal init on exit */
	current->exit_signal = SIGCHLD;

	if (FUNC6(current) < 0)
		FUNC5(current, 0);
	/* cpus_allowed? */
	/* rt_priority? */
	/* signals? */
	FUNC3(current->signal->rlim, init_task.signal->rlim,
	       sizeof(current->signal->rlim));

	FUNC0(&init_cred.usage);
	FUNC1(&init_cred);
	FUNC8(&tasklist_lock);
}