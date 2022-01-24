#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lockdep_map {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;

/* Variables and functions */
 int FUNC0 (struct lockdep_map*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct lockdep_map *lock)
{
	unsigned long flags;
	int ret = 0;

	if (FUNC4(current->lockdep_recursion))
		return ret;

	FUNC3(flags);
	FUNC1(flags);

	current->lockdep_recursion = 1;
	ret = FUNC0(lock);
	current->lockdep_recursion = 0;
	FUNC2(flags);

	return ret;
}