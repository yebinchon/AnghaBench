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
typedef  int /*<<< orphan*/  wait_queue_head_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int /*<<< orphan*/  NLMCLNT_GRACE_WAIT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC6(wait_queue_head_t *queue)
{
	FUNC0(wait);
	int status = -EINTR;

	FUNC2(queue, &wait, TASK_INTERRUPTIBLE);
	if (!FUNC4 ()) {
		FUNC3(NLMCLNT_GRACE_WAIT);
		FUNC5();
		if (!FUNC4 ())
			status = 0;
	}
	FUNC1(queue, &wait);
	return status;
}