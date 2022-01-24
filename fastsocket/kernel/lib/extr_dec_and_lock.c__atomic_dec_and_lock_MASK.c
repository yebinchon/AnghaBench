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
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(atomic_t *atomic, spinlock_t *lock)
{
	/* Subtract 1 from counter unless that drops it to 0 (ie. it was 1) */
	if (FUNC0(atomic, -1, 1))
		return 0;

	/* Otherwise do it the slow way */
	FUNC2(lock);
	if (FUNC1(atomic))
		return 1;
	FUNC3(lock);
	return 0;
}