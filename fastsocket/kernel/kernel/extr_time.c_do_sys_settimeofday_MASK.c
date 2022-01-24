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
struct timezone {int dummy; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct timespec const*) ; 
 int FUNC1 (struct timespec const*,struct timezone const*) ; 
 struct timezone sys_tz ; 
 int /*<<< orphan*/  FUNC2 (struct timespec const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(const struct timespec *tv, const struct timezone *tz)
{
	static int firsttime = 1;
	int error = 0;

	if (tv && !FUNC2(tv))
		return -EINVAL;

	error = FUNC1(tv, tz);
	if (error)
		return error;

	if (tz) {
		/* SMP safe, global irq locking makes it work. */
		sys_tz = *tz;
		FUNC3();
		if (firsttime) {
			firsttime = 0;
			if (!tv)
				FUNC4();
		}
	}
	if (tv)
	{
		/* SMP safe, again the code in arch/foo/time.c should
		 * globally block out interrupts when it runs.
		 */
		return FUNC0(tv);
	}
	return 0;
}