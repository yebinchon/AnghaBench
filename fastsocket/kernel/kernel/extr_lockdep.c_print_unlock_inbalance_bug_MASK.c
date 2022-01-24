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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct lockdep_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug_locks_silent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct lockdep_map*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static int
FUNC7(struct task_struct *curr, struct lockdep_map *lock,
			   unsigned long ip)
{
	if (!FUNC0())
		return 0;
	if (debug_locks_silent)
		return 0;

	FUNC5("\n=====================================\n");
	FUNC5(  "[ BUG: bad unlock balance detected! ]\n");
	FUNC5(  "-------------------------------------\n");
	FUNC5("%s/%d is trying to release lock (",
		curr->comm, FUNC6(curr));
	FUNC4(lock);
	FUNC5(") at:\n");
	FUNC3(ip);
	FUNC5("but there are no more locks to release!\n");
	FUNC5("\nother info that might help us debug this:\n");
	FUNC2(curr);

	FUNC5("\nstack backtrace:\n");
	FUNC1();

	return 0;
}