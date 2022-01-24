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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug_locks_silent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static void FUNC5(struct task_struct *curr)
{
	if (!FUNC0())
		return;
	if (debug_locks_silent)
		return;

	FUNC3("\n=====================================\n");
	FUNC3(  "[ BUG: lock held at task exit time! ]\n");
	FUNC3(  "-------------------------------------\n");
	FUNC3("%s/%d is exiting with locks still held!\n",
		curr->comm, FUNC4(curr));
	FUNC2(curr);

	FUNC3("\nstack backtrace:\n");
	FUNC1();
}