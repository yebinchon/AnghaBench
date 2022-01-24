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
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (char const*,void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  tracepoints_mutex ; 

int FUNC7(const char *name, void *probe)
{
	void *old;

	FUNC2(&tracepoints_mutex);
	old = FUNC5(name, probe);
	FUNC3(&tracepoints_mutex);
	if (FUNC0(old))
		return FUNC1(old);

	FUNC6();		/* may update entry */
	FUNC4(old);
	return 0;
}