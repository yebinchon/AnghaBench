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
struct task_struct {struct task_struct* group_leader; } ;
struct pid_namespace {int dummy; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (int,struct pid_namespace*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 struct task_struct* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static struct task_struct *FUNC6(struct task_struct *leader,
		int tid, int nr, struct pid_namespace *ns)
{
	struct task_struct *pos;

	FUNC4();
	/* Attempt to start with the pid of a thread */
	if (tid && (nr > 0)) {
		pos = FUNC0(tid, ns);
		if (pos && (pos->group_leader == leader))
			goto found;
	}

	/* If nr exceeds the number of threads there is nothing todo */
	pos = NULL;
	if (nr && nr >= FUNC1(leader))
		goto out;

	/* If we haven't found our starting place yet start
	 * with the leader and walk nr threads forward.
	 */
	for (pos = leader; nr > 0; --nr) {
		pos = FUNC3(pos);
		if (pos == leader) {
			pos = NULL;
			goto out;
		}
	}
found:
	FUNC2(pos);
out:
	FUNC5();
	return pos;
}