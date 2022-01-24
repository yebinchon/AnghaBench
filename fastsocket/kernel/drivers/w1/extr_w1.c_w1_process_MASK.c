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
struct w1_master {int /*<<< orphan*/  refcnt; scalar_t__ search_count; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  W1_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct w1_master*,int /*<<< orphan*/ ) ; 
 int w1_timeout ; 

int FUNC10(void *data)
{
	struct w1_master *dev = (struct w1_master *) data;
	/* As long as w1_timeout is only set by a module parameter the sleep
	 * time can be calculated in jiffies once.
	 */
	const unsigned long jtime = FUNC3(w1_timeout * 1000);

	while (!FUNC2()) {
		if (dev->search_count) {
			FUNC4(&dev->mutex);
			FUNC9(dev, W1_SEARCH);
			FUNC5(&dev->mutex);
		}

		FUNC8();
		FUNC0(TASK_INTERRUPTIBLE);

		if (FUNC2())
			break;

		/* Only sleep when the search is active. */
		if (dev->search_count)
			FUNC7(jtime);
		else
			FUNC6();
	}

	FUNC1(&dev->refcnt);

	return 0;
}