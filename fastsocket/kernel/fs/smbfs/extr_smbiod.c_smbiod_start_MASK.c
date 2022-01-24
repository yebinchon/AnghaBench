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
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 scalar_t__ SMBIOD_DEAD ; 
 scalar_t__ SMBIOD_RUNNING ; 
 scalar_t__ SMBIOD_STARTING ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  servers_lock ; 
 int /*<<< orphan*/  smbiod ; 
 scalar_t__ smbiod_state ; 
 struct task_struct* smbiod_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void)
{
	struct task_struct *tsk;
	int err = 0;

	if (smbiod_state != SMBIOD_DEAD)
		return 0;
	smbiod_state = SMBIOD_STARTING;
	FUNC2(THIS_MODULE);
	FUNC6(&servers_lock);
	tsk = FUNC3(smbiod, NULL, "smbiod");
	if (FUNC0(tsk)) {
		err = FUNC1(tsk);
		FUNC4(THIS_MODULE);
	}

	FUNC5(&servers_lock);
	if (err < 0) {
		smbiod_state = SMBIOD_DEAD;
		smbiod_thread = NULL;
	} else {
		smbiod_state = SMBIOD_RUNNING;
		smbiod_thread = tsk;
	}
	return err;
}