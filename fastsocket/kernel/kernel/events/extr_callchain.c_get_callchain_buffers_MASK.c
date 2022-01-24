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

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  callchain_cpus_entries ; 
 int /*<<< orphan*/  callchain_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_callchain_events ; 

int FUNC5(void)
{
	int err = 0;
	int count;

	FUNC3(&callchain_mutex);

	count = FUNC2(&nr_callchain_events);
	if (FUNC0(count < 1)) {
		err = -EINVAL;
		goto exit;
	}

	if (count > 1) {
		/* If the allocation failed, give up */
		if (!callchain_cpus_entries)
			err = -ENOMEM;
		goto exit;
	}

	err = FUNC1();
exit:
	FUNC4(&callchain_mutex);

	return err;
}