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
struct compact_control {int contended; int /*<<< orphan*/  sync; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC6(spinlock_t *lock, unsigned long *flags,
				      bool locked, struct compact_control *cc)
{
	if (FUNC2() || FUNC3(lock)) {
		if (locked) {
			FUNC5(lock, *flags);
			locked = false;
		}

		/* async aborts if taking too long or contended */
		if (!cc->sync) {
			cc->contended = true;
			return false;
		}

		FUNC0();
		if (FUNC1(current))
			return false;
	}

	if (!locked)
		FUNC4(lock, *flags);
	return true;
}