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
struct task_struct {int lockdep_depth; scalar_t__ held_locks; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static void FUNC3(struct task_struct *curr)
{
	int i, depth = curr->lockdep_depth;

	if (!depth) {
		FUNC1("no locks held by %s/%d.\n", curr->comm, FUNC2(curr));
		return;
	}
	FUNC1("%d lock%s held by %s/%d:\n",
		depth, depth > 1 ? "s" : "", curr->comm, FUNC2(curr));

	for (i = 0; i < depth; i++) {
		FUNC1(" #%d: ", i);
		FUNC0(curr->held_locks + i);
	}
}