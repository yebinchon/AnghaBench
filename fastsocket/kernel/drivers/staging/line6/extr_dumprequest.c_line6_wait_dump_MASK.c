#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct line6_dump_request {int /*<<< orphan*/  wait; scalar_t__ in_progress; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  wait ; 

int FUNC5(struct line6_dump_request *l6dr, int nonblock)
{
	int retval = 0;
	FUNC0(wait, current);
	FUNC1(&l6dr->wait, &wait);
	current->state = TASK_INTERRUPTIBLE;

	while (l6dr->in_progress) {
		if (nonblock) {
			retval = -EAGAIN;
			break;
		}

		if (FUNC4(current)) {
			retval = -ERESTARTSYS;
			break;
		} else
			FUNC3();
	}

	current->state = TASK_RUNNING;
	FUNC2(&l6dr->wait, &wait);
	return retval;
}