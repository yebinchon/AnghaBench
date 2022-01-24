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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  thread_mode ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void FUNC4(pthread_t id)
{
	int proc_status;
	void *thread_status;

	if (!thread_mode) {
		/* process mode */
		FUNC3(&proc_status);
		if (!FUNC0(proc_status))
			FUNC1(1);
	} else {
		FUNC2(id, &thread_status);
	}
}